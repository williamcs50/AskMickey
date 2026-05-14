/*
Project: AskMickey
File: llm_gemini.dart
Last Revised: September 05, 2024


This file implements the GeminiService class, which is responsible for
interacting with Google's Gemini AI model to generate responses for user queries.
It also includes configuration classes for API and generation options.


## Key Components:
- ApiConfig: Stores the API key for accessing the Gemini AI service
- GenerationOptions: Configures parameters for AI response generation
- GeminiService: Main class for interacting with the Gemini AI model


## Relationships with Other Files:
- main_conversation_screen.dart: Uses GeminiService to process user inputs and generate responses
- prompt_category.dart: Uses GeminiService to categorize user prompts
- string_constants.dart: Stores some of the constant strings used in this file
*/


import 'package:flutter/foundation.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class ApiConfig {
  static const String apiKey = 'YOUR_GEMINI_API_KEY_HERE';
}

class GenerationOptions {
  final double temperature;
  final int? maxOutputTokens;
  final double topP;
  final int topK;
  final List<String>? stopSequences;

  GenerationOptions({
    this.temperature = 1.0,
    this.topP = 1.0,
    this.topK = 1,
    this.maxOutputTokens = 2000,
    this.stopSequences,
  });
}

class GeminiService {
  static final GeminiService _instance = GeminiService._internal();
  static const String lLMiterationPrepend = '''You are an intelligent, friendly, useful, informative host to guests of DisneyWorld in Orlando, Florida who has the voice and personality of Mickey Mouse. You have generated multiple responses to a guest prompt and are now required to review each of these responses and based on the following criteria, select the best response:
 1.) Factual accuracy based primarily on consistency of information across responses.
 2.) Completeness of information.
 3.) Useful and simple formatting with appropriate use of markdown.
 4.) Style consistent with helpful, friendly, cheerful Mickey Mouse.
 ''';
  static const String lLMIterationPostpend = "Provide a single, thorough, and complete optimized result based on these iterations. Do not include any mention of this optimization process or how multiple responses are evaluated. If coordinates are contained in a result, do not change the values or format of the line in any way";

  factory GeminiService() {
    return _instance;
  }

  GeminiService._internal()
      : _model = GenerativeModel(
    model: 'gemini-1.5-flash-latest',
    apiKey: ApiConfig.apiKey,
  );

  final GenerativeModel _model;
  final List<String> _responseHistory = [];

  Future<String> generateResponse(String userInput, {
    GenerationOptions? options,
    int numberOfLLMIterations = 1
  }) async {
    debugPrint("*** Number of LLM iterations: $numberOfLLMIterations", wrapWidth: 800);

    if (userInput.toLowerCase().contains("system administration")) {
      return "System Administration";
    } else {
      if (numberOfLLMIterations == 1) {
        return await _generateSingleResponse(userInput, options);
      } else {
        return await _generateIterativeResponse(userInput, options, numberOfLLMIterations);
      }
    }
  }

  Future<String> getResponseHistory() async {
    if (_responseHistory.isNotEmpty) {
      String responseHistory = _responseHistory.asMap().entries.fold(
        "", (acc, element) => "$acc${element.key + 1}) ${element.value}\n");
      return "History:\n\n$responseHistory";
    } else {
      return "History:\n\nNo responses yet.\n";
    }
  }

  Future<String> _generateSingleResponse(String userInput, GenerationOptions? options) async {
    String prompt = _buildPrompt(userInput);

    try {
      final content = [Content.text(prompt)];
      options ??= GenerationOptions();
      final response = await _model.generateContent(content);

      String modelResponse = response.text ?? 'No response generated.';
      String formattedResponse = modelResponse;
      debugPrint("*** LLM single response = $modelResponse", wrapWidth: 800);
      debugPrint('==========================================');

      _responseHistory.add(formattedResponse);
      return formattedResponse;
    } catch (e) {
      debugPrint('Error generating response: $e');
      return '''Oops, I'm real sorry pal, I got all confused. Can we please try that again?''';
    }
  }

  Future<String> _generateIterativeResponse(String userInput, GenerationOptions? options, int numberOfIterations) async {
    List<String> lLMresult = [];

    for (int i = 0; i < numberOfIterations; i++) {
      String iterationPrompt = _buildPrompt(userInput);

      try {
        final content = [Content.text(iterationPrompt)];
        options ??= GenerationOptions();
        final response = await _model.generateContent(content);
        String modelResponse = response.text ?? 'No response generated.';
        lLMresult.add(modelResponse);
        debugPrint("*** Iteration $i result: $modelResponse", wrapWidth: 800);
      } catch (e) {
        debugPrint('Error generating response for iteration $i: $e');
        lLMresult.add('Error in iteration $i');
      }
    }

    String combinedResults = lLMresult.join("\n\n");
    String finalPrompt = "$lLMiterationPrepend\n\n$combinedResults\n\n$lLMIterationPostpend";

    try {
      final content = [Content.text(finalPrompt)];
      final response = await _model.generateContent(content);
      String finalResponse = response.text ?? 'No final response generated.';
      debugPrint("Final optimized result: $finalResponse", wrapWidth: 800);

      _responseHistory.add(finalResponse);
      return finalResponse;
    } catch (e) {
      debugPrint('Error generating final response: $e');
      return '''Oops, I'm real sorry pal, I got all confused. Can we please try that again?''';
    }
  }

  String _buildPrompt(String userInput) {
    String history = _responseHistory.map((response) => "LLM prior response: $response").join("\n");
    return "$history\nUser: $userInput";
  }

  void clearResponseHistory() {
    _responseHistory.clear();
    debugPrint("Response history cleared.");
  }
}