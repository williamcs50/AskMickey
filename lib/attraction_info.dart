/*
 Project: AskMickey
 File: attraction_info.dart
 Last Revised: September 05, 2024

 This file implements the AttractionInfo class, which is responsible for
 generating information about attractions at Disney World using the Gemini AI model.

 The [AttractionInfo] class processes user queries about attractions and returns
 detailed information, leveraging the GeminiService for AI-powered responses.

 ## Key Components:
 - AttractionInfo: Main class for handling attraction information requests
 - execute: Method to process the user's prompt and generate a response

 ## Relationships with Other Files:
 - llm_gemini.dart: Provides the GeminiService for AI model interactions
 - string_constants.dart: Contains constant strings used in prompt construction
 - prompt_category.dart: Defines the PromptResult class used for returning responses
 - attraction_info_string.dart: Stores attraction-specific information strings
 - main_conversation_screen.dart: Utilizes AttractionInfo to answer user queries about attractions
*/

import 'dart:async';
import 'llm_gemini.dart';
import 'string_constants.dart';
import 'prompt_category.dart';
import 'attraction_info_string.dart';

/// Main class for handling attraction information requests.
class AttractionInfo {
  /// Instance of GeminiService for AI interactions.
  final GeminiService _llm;

  /// Number of iterations for the LLM to generate a comprehensive response.
  static const int _defaultLLMIterations = 3;

  /// Constructor for AttractionInfo.
  ///
  /// Allows dependency injection of GeminiService for better testability.
  AttractionInfo({GeminiService? llm}) : _llm = llm ?? GeminiService();

  /// Executes the attraction info request and generates a response.
  ///
  /// [originalPrompt] is the user's query about an attraction.
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
  /// [originalPrompt] is the user's original query.
  /// Returns a formatted string combining various prompt components.
  String _constructPrompt(String originalPrompt) {
    return '$AttractionInfoPrepend $originalPrompt $AttractionInfoPostpend $attractionInformation';
  }

  /// Generates a response using the Gemini AI model.
  ///
  /// [prompt] is the constructed prompt for the AI model.
  /// Returns the AI-generated response as a string.
  Future<String> _generateAIResponse(String prompt) async {
    return _llm.generateResponse(prompt, numberOfLLMIterations: _defaultLLMIterations);
  }
}