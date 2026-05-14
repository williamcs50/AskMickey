/*
Project: AskMickey
File: indeterminate_category.dart
Last Revised: September 12, 2024

This file implements the IndeterminateCategory class, which handles cases where
a user's input cannot be clearly categorized into a specific topic or intent
within the AskMickey application. It uses the Gemini LLM to generate an appropriate Mickey Mouse-style response 
and offers the user the option to visit the Disney World website.

The [IndeterminateCategory] class is designed to provide a fallback response
when the system cannot determine how to process a user's query, ensuring that
the user always receives some form of feedback.

## Key Components:
- IndeterminateCategory: Main class for handling uncategorized user inputs
- execute: Method to process the indeterminate prompt and return a generated response

## Relationships with Other Files:
- llm_gemini.dart: Provides the GeminiService for generating responses
- string_constants.dart: Contains the IndeterminateCategoryPrepend and IndeterminateCategoryPostpend constants
- prompt_category.dart: Defines the PromptResult class and directs indeterminate prompts to this class
- main_conversation_screen.dart: Utilizes IndeterminateCategory to handle unclear user inputs
*/

import 'dart:async';
import 'string_constants.dart';
import 'prompt_category.dart';
import 'llm_gemini.dart';

// Main class for handling indeterminate category prompts
class IndeterminateCategory {
  final GeminiService _llm = GeminiService();

  // Method to execute the indeterminate category handling
  Future<PromptResult> execute(String originalPrompt) async {
    String combinedPrompt = '$IndeterminateCategoryPrepend$originalPrompt$IndeterminateCategoryPostpend';
    String response = await _llm.generateResponse(combinedPrompt, numberOfLLMIterations: 3);

    // Instead of sending to LLM, use a fixed message for indeterminate categories
    // String response = IndeterminateCategoryReturnMessage;

    // Configuration for button display and URL 
    bool showButtons = true; 

    // URL Set to Walt Disney World Website
    String? url = "https://disneyworld.disney.go.com/"; 


    // Return a PromptResult object with the generated response
    return PromptResult(response: response, showButtons: showButtons, url: url);
  }
}
