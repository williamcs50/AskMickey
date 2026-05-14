/*
 Project: AskMickey
 File: conversation_continuation.dart
 Last Revised: September 05, 2024

 This file implements the ConversationContinuation class, which is responsible
 for generating contextually appropriate responses to continue a conversation
 with the user in the AskMickey application.

 The [ConversationContinuation] class processes user input that doesn't fall
 into specific categories and generates a response to keep the conversation
 flowing naturally.

 ## Key Components:
 - ConversationContinuation: Main class for handling general conversation
 - execute: Method to process the user's prompt and generate a response

 ## Relationships with Other Files:
 - llm_gemini.dart: Provides the GeminiService for AI model interactions
 - string_constants.dart: Contains constant strings used in prompt construction
 - prompt_category.dart: Defines the PromptResult class used for returning responses
 - main_conversation_screen.dart: Utilizes ConversationContinuation for general chat interactions
 - prompt_category.dart: Calls ConversationContinuation when no specific category is identified
*/

import 'dart:async';
import 'llm_gemini.dart';
import 'string_constants.dart'; // Import the string constants file
import 'prompt_category.dart'; // Import the PromptResult class

/// Main class for handling general conversation continuation.
class ConversationContinuation {
  /// Instance of GeminiService for AI interactions.
  final GeminiService _llm;

  /// Constructor for ConversationContinuation.
  ///
  /// Allows dependency injection of GeminiService for better testability.
  ConversationContinuation({GeminiService? llm}) : _llm = llm ?? GeminiService();

  /// Executes the conversation continuation request and generates a response.
  ///
  /// [originalPrompt] is the user's input that needs to be processed.
  /// Returns a [PromptResult] containing the AI-generated response.
  Future<PromptResult> execute(String originalPrompt) async {
    final String combinedPrompt = _constructPrompt(originalPrompt);
    final String response = await _generateAIResponse(combinedPrompt);
    
    return PromptResult(
      response: response,
      showButtons: false,
      url: null,
    );
  }

  /// Constructs the combined prompt for the AI model.
  ///
  /// [originalPrompt] is the user's original input.
  /// Returns a formatted string combining various prompt components.
  String _constructPrompt(String originalPrompt) {
    return '$ConversationContinuationPrepend $originalPrompt $ConversationContinuationPostpend';
  }

  /// Generates a response using the Gemini AI model.
  ///
  /// [prompt] is the constructed prompt for the AI model.
  /// Returns the AI-generated response as a string.
  Future<String> _generateAIResponse(String prompt) async {
    return _llm.generateResponse(prompt, numberOfLLMIterations: 3);
  }
}