# Architecture

AskMickey is a Flutter mobile app that puts a classification layer in front of Google Gemini to keep an LLM-driven assistant tightly scoped to a single domain — Walt Disney World, currently EPCOT-only. Rather than sending raw user queries to Gemini and trusting the model to stay on-topic, the app classifies every query first, routes it to a dedicated handler module, and only then calls Gemini with a domain-specific prompt that has the relevant context already injected.

This document describes how that pattern is implemented: the path a query takes from user input to displayed response, the modules involved at each step, and what the design enables versus what it would require restructuring to support.

## System Architecture and Data Flow

Every user query flows through the same five stages.

**1. Input capture.** The user types a query into `MainConversationScreen`. The screen owns conversation state and the input field, and on submit it hands the raw query string to `PromptCategory.processPrompt()`.

**2. Classification.** `PromptCategory` wraps the user input with two constant strings — `PromptCategoryPrepend` and `PromptCategoryPostpend` from `string_constants.dart` — that instruct Gemini to return exactly one category name. This combined string is sent to `GeminiService.generateResponse()` with `numberOfLLMIterations: 1`. The response is trimmed and used as the routing key. No other content is generated at this step; the classification call exists solely to pick a handler.

**3. Routing.** `PromptCategory._executeModule()` is a switch statement over the trimmed classification string. Each case instantiates the corresponding handler and calls its `.execute(originalInput)` method. The original user input — not the classification response — is passed forward so the handler has the full query to work with. If the classification string doesn't match any known category, the user gets a friendly fallback response and the unmatched string is logged for debugging.

**4. Handler execution.** Each handler is a self-contained module responsible for one category of query. The handler retrieves whatever data it needs (real-time API call, static constants, or both), builds a domain-specific prompt with that data injected, calls `GeminiService` a second time to generate the user-facing response, and returns a `PromptResult`.

**5. Presentation.** `PromptResult` carries three fields: `response` (the text to show), `showButtons` (whether to render follow-up action buttons), and an optional `url` (used when the response should link out to a menu, map, or external page). `MainConversationScreen` reads these and updates the UI.

The key property of this flow is that Gemini is called twice per query but with very different prompts. The first call is constrained to return one of a small set of category strings; the second call is constrained by the handler's prompt template plus the injected real-time or static data. At no point does the raw user input reach a generic Gemini prompt.

## Component Relationships

### Entry and Navigation

`main.dart` is the Flutter entry point. It loads the `.env` file via `flutter_dotenv` before `runApp` so the Gemini API key is available throughout the app, configures the global theme, and sets up a `Navigator` with four routes:

- `/` → `WelcomeScreen` (initial landing)
- `/main` → `MainConversationScreen` (primary chat interface)
- `/browser` → `BrowserScreen` (in-app web view for external links)
- `/map` → `MapScreen` (map view for navigation queries)

The `AnimatedBackground` widget provides the starry visual layer that wraps the entire app.

### Conversation Layer

`MainConversationScreen` is the central interactive surface. It maintains conversation state, renders the input field and message history, and orchestrates calls to `PromptCategory`. When a handler returns a `PromptResult` with a `url`, the screen offers the user a button to open it in `BrowserScreen` or `MapScreen` as appropriate.

### Classification and Routing

`prompt_category.dart` defines two classes:

- **`PromptResult`** — a small value object with `response`, `showButtons`, and optional `url`. Every handler returns one of these.
- **`PromptCategory`** — holds a reference to `GeminiService` and exposes `processPrompt()`. Its private `_executeModule()` is the switch statement that maps Gemini's classification output to handler invocations.

The category strings the LLM is trained to return include: `Weather`, `Ride Wait`, `Attraction Information`, `Dining`, `Menu`, `Maps`, `Parking Location`, `Fun Facts`, `Conversation Continuation`, plus three safety/fallback categories — `Inappropriate Prompt`, `Indeterminate Category`, `Not Disney Related` — and one internal category, `System Administration`, used during development.

One detail worth flagging: the wait-time category is named `Ride Wait` rather than `Attraction Queue` at the LLM-facing level. This was changed deliberately because Gemini's safety filters interpreted "queue" in some contexts as ambiguous. The Dart class is still `AttractionQueue` — only the classification string was renamed. This is the kind of LLM-facing detail that doesn't surface in the class hierarchy but is critical to the system actually working.

### LLM Service Layer

`llm_gemini.dart` exposes `GeminiService`, the only module in the app that talks directly to Gemini. It reads the API key from the environment (loaded by `flutter_dotenv`) and provides a `generateResponse()` method that handlers call. Centralizing LLM access here means every Gemini call in the app goes through one configuration point — useful for future changes to model version, safety settings, or provider.

### Handler Modules

Each category has its own handler file in `lib/`. They fall into three groups by what they do.

**Real-time data handlers** fetch live information before constructing their prompts:

- `weather.dart` — pulls current weather conditions for the park location
- `attraction_queue.dart` — fetches wait times (mapped from the `Ride Wait` category)
- `dining.dart` — retrieves dining options and availability
- `menu.dart` — retrieves specific menu data, often linked to a `url` in the returned `PromptResult`

**Static data handlers** combine the user query with pre-defined constants:

- `attraction_info.dart` — uses content from `attraction_info_string.dart`
- `parking_location.dart` — references known parking areas
- `fun_facts.dart` — uses content from `fun_facts_string.dart`
- `maps.dart` — uses coordinate data from `maps_coordinates_string.dart`

**Safety, fallback, and meta handlers** don't always call Gemini at all:

- `inappropriate_prompt.dart` — short-circuits with a fixed response, no LLM call
- `not_disney_related.dart` — short-circuits with a redirect message
- `indeterminate_category.dart` — asks the user to rephrase
- `conversation_continuation.dart` — handles natural follow-ups that don't fit a specific intent
- `system_administration.dart` — internal/development category used for testing; not exposed as a user-facing capability

The string-constant files (`attraction_info_string.dart`, `dining_information_string.dart`, `dining_menu_url_string.dart`, `fun_facts_string.dart`, `maps_coordinates_string.dart`, `string_constants.dart`) hold the static content and prompt scaffolding the handlers compose with. Keeping these separate from handler logic makes content updates a one-file change.

### Supporting UI and Utilities

- `welcome_screen.dart`, `popup_choice_screen.dart` — onboarding flow
- `browser_screen.dart` — in-app web view for opening menu/info URLs
- `map_screen.dart` — map display for location queries
- `animated_background.dart` — starry background animation
- `mickey_progress_circles.dart`, `progress_caption.dart` — loading indicators while LLM calls resolve
- `location_service.dart` — device location, used by location-aware handlers like `nearest_restroom.dart`
- `url_launcher.dart` — wraps external URL launches

## Future Considerations

The current architecture is built for a single park (EPCOT) and a single LLM provider (Gemini). Some directions extend cleanly; others would require restructuring.

**Cleanly extensible:**

- **Adding handlers.** A new query category means a new handler file, a new case in `PromptCategory._executeModule()`, and a new category string in the classification prompt. No other module changes.
- **Adding parks.** The static constants (attraction info, parking locations, fun facts) are isolated in their own files. Supporting Magic Kingdom or Hollywood Studios means new constant files and likely a park-selection step in the UI; the routing core stays the same.
- **Swapping LLM providers.** Because every model call goes through `GeminiService`, replacing Gemini with another provider is a single-file change as long as the new service exposes a comparable `generateResponse()` method.

**Would require restructuring:**

- **Multi-park context within a single conversation.** The current model assumes one active park context; carrying park selection through the routing layer and into handler prompts would mean threading state through `PromptCategory`.
- **Conversation memory across turns.** `ConversationContinuation` handles surface-level follow-ups, but there's no shared memory of prior turns injected into handler prompts. Real multi-turn context would mean adding a conversation history layer between the screen and the handlers.
- **Streaming responses.** The current pattern is request/response per `PromptResult`. Streaming would mean reshaping the handler return type and the way `MainConversationScreen` consumes results.
