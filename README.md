# AskMickey

## Overview
AskMickey is a conversational AI assistant for Walt Disney World guests that delivers real-time help with park navigation, attractions, dining, wait times, and more.


## Demo
[![AskMickey Demo](https://img.youtube.com/vi/tvfP0SIrxjA/maxresdefault.jpg)](https://www.youtube.com/watch?v=tvfP0SIrxjA)

## Features
- Intelligent conversational AI assistant for Walt Disney World
- Real-time attraction info, wait times, dining options, and weather
- Saves parking location
- Navigation helper
- Fun Disney facts and trivia
- Animated Mickey-themed UI with starry background

## Getting Started
1. Clone the repository
```bash
git clone https://github.com/williamcs50/AskMickey.git
cd AskMickey
```
2. Set up your Gemini API key
```bash
cp .env.example .env
```
Edit .env and add your key:
```bash
GEMINI_API_KEY=your_gemini_api_key_here
```
3. Install dependencies
```bash
flutter pub get
```
4. Run the app
```bash
flutter run
```
### Platform Support
Tested on iOS, macOS, and web. Other Flutter targets (Android, Windows, Linux) are untested.

## Architecture
AskMickey uses a lightweight classify-then-route pattern with Gemini to deliver accurate and reliable responses.

### Query Classification and Routing
Gemini classifies each query into a category. The app then routes it to the appropriate handler:

- `AttractionInfo` — attraction details
- `Dining` / `Menu` — dining options and menus
- `Weather` — weather information
- `Maps` — navigation and directions
- `AttractionQueue` — wait times
- `FunFacts` — general Disney World information
- `ParkingLocation` — parking location
- `InappropriatePrompt`, `NotDisneyRelated`, `IndeterminateCategory` — safety filters and fallbacks
- `ConversationContinuation` — general conversation

Each handler retrieves relevant data from static constants or external APIs, builds a domain-specific prompt, calls `GeminiService`, and returns a `PromptResult`. `MainConversationScreen` then updates the UI.

### Constraining Gemini

Gemini is kept on-domain through early classification, domain-specific prompts with injected context, and dedicated safety handlers for inappropriate or off-topic queries.

## Project Status
**MVP EPCOT Only**

Flutter app with Gemini integration, built for EPCOT.

Core features are implemented:
- Intelligent conversation routing
- Attractions, wait times, dining, menus, parking, navigation, weather, and fun facts
- Modular structure for adding other parks later

Functional but early stage.