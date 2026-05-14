/*
 Project: AskMickey
 File: fun_facts.dart
 Last Revised: September 05, 2024

 This file implements the FunFacts class, which is responsible for generating
 interesting and entertaining facts about Disney World in response to user queries.
 It utilizes the Gemini AI model to create engaging responses based on a combination
 of user input and pre-defined fun facts.

 The [FunFacts] class processes user requests for interesting information about
 Disney World and generates AI-powered responses that are both informative and entertaining.

 ## Key Components:
 - FunFacts: Main class for handling fun fact requests
 - execute: Method to process the user's prompt and generate a fun fact response

 ## Relationships with Other Files:
 - llm_gemini.dart: Provides the GeminiService for AI model interactions
 - string_constants.dart: Contains constant strings used in prompt construction
 - prompt_category.dart: Defines the PromptResult class used for returning responses
 - fun_facts_string.dart: Stores a collection of pre-defined fun facts about Disney World
 - main_conversation_screen.dart: Utilizes FunFacts class to answer user requests for interesting information
 - prompt_category.dart: Directs fun fact-related queries to this FunFacts class
*/

import 'dart:async';
import 'llm_gemini.dart';
import 'string_constants.dart'; // Import the string constants file
import 'prompt_category.dart'; // Import the PromptResult class

// Main class for handling fun fact requests
class FunFacts {
 // Instance of GeminiService for AI interactions
 final GeminiService _llm = GeminiService();

  // Method to execute the fun fact request
  Future<PromptResult> execute(String originalPrompt) async {
    // Construct the combined prompt using constant strings and fun facts data
    String combinedPrompt = '$FunFactsPrepend $originalPrompt $FunFactsPostpend $FunFacts';

    // Generate a response using the Gemini AI model
    // The numberOfLLMIterations parameter is set to 3 for more varied and interesting responses
    String response = await _llm.generateResponse(combinedPrompt, numberOfLLMIterations: 3);
    
    // Configuration for button display and URL (currently not used)
    bool showButtons = false;
    String? url;

    // Return a PromptResult object with the generated response
    return PromptResult(response: response, showButtons: showButtons, url: url);
  }
}