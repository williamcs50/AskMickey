/*
Project: AskMickey
File: inappropriate_prompt.dart
Last Revised: September 12, 2024

This file implements the InappropriatePrompt class, which handles cases where
a user's input is deemed inappropriate or unsuitable for the AskMickey application.
It now uses the Gemini LLM to generate a Mickey Mouse-style response that redirects
the conversation to a more appropriate topic.

The [InappropriatePrompt] class is designed to maintain a family-friendly and
appropriate interaction environment within the app by filtering out unsuitable content.

## Key Components:
- InappropriatePrompt: Main class for handling inappropriate user inputs
- execute: Method to process the inappropriate prompt and return a generated response

## Relationships with Other Files:
- llm_gemini.dart: Provides the GeminiService for generating responses
- string_constants.dart: Contains the InappropriatePromptPrepend and InappropriatePromptPostpend constants
- prompt_category.dart: Defines the PromptResult class and directs inappropriate prompts to this class
- main_conversation_screen.dart: Utilizes InappropriatePrompt to handle unsuitable user inputs
*/

import 'dart:async';
import 'string_constants.dart';
import 'prompt_category.dart';
import 'llm_gemini.dart';

// Main class for handling inappropriate prompts
class InappropriatePrompt {
  final GeminiService _llm = GeminiService();

  // Method to execute the inappropriate prompt handling
  Future<PromptResult> execute(String originalPrompt) async {
    String combinedPrompt = '$InappropriatePromptPrepend$originalPrompt$InappropriatePromptPostpend';
    String response = await _llm.generateResponse(combinedPrompt, numberOfLLMIterations: 1);

    // Instead of sending to LLM, use a fixed message for inappropriate prompts
    // String response = InappropriatePromptReturnMessage;

    // Configuration for button display and URL (currently not used)
    bool showButtons = false;
    String? url;

    // Return a PromptResult object with the generated response
    return PromptResult(response: response, showButtons: showButtons, url: url);
  }
}