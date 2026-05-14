/*
 Project: AskMickey
 File: attraction_queue.dart
 Last Revised: September 05, 2024

 This file implements the AttractionQueue class, which is responsible for
 fetching real-time queue data for Disney World attractions and generating
 AI-powered responses about wait times and queue information.

 The [AttractionQueue] class processes user queries about attraction wait times,
 fetches current data from external APIs, and uses the GeminiService to provide
 informative responses.

 ## Key Components:
 - AttractionQueue: Main class for handling attraction queue information requests
 - execute: Method to process the user's prompt and generate a response
 - _fetchAttractionData: Private method to fetch real-time queue data from external APIs

 ## Relationships with Other Files:
 - llm_gemini.dart: Provides the GeminiService for AI model interactions
 - string_constants.dart: Contains constant strings used in prompt construction
 - prompt_category.dart: Defines the PromptResult class used for returning responses
 - main_conversation_screen.dart: Utilizes AttractionQueue to answer user queries about wait times
 - animated_background.dart: Provides the background on which AttractionQueue responses are displayed
*/

import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'llm_gemini.dart';
import 'string_constants.dart';
import 'prompt_category.dart';
import 'package:flutter/foundation.dart' show debugPrint;

/// Main class for handling attraction queue information requests.
class AttractionQueue {
  /// Instance of GeminiService for AI interactions.
  final GeminiService _llm;

  /// Holds the fetched JSON data for attraction queues.
  String attractionQueueData = '';

  /// Constructor for AttractionQueue.
  ///
  /// Allows dependency injection of GeminiService for better testability.
  AttractionQueue({GeminiService? llm}) : _llm = llm ?? GeminiService();

  /// Executes the attraction queue info request and generates a response.
  ///
  /// [originalPrompt] is the user's query about attraction wait times.
  /// Returns a [PromptResult] containing the AI-generated response.
  Future<PromptResult> execute(String originalPrompt) async {
    await _fetchAttractionData();

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
    return '$AttractionQueuePrepend $originalPrompt $AttractionQueuePostpend $attractionQueueData';
  }

  /// Generates a response using the Gemini AI model.
  ///
  /// [prompt] is the constructed prompt for the AI model.
  /// Returns the AI-generated response as a string.
  Future<String> _generateAIResponse(String prompt) async {
    return _llm.generateResponse(prompt, numberOfLLMIterations: 3);
  }

  /// Fetches real-time queue data from external APIs.
  Future<void> _fetchAttractionData() async {
    final List<String> urls = [
      'https://queue-times.com/parks/5/queue_times.json',
      'https://queue-times.com/parks/6/queue_times.json',
      'https://queue-times.com/parks/7/queue_times.json',
      'https://queue-times.com/parks/8/queue_times.json',
    ];

    final List<Map<String, dynamic>> attractionDataList = [];

    for (final String url in urls) {
      await _fetchDataFromUrl(url, attractionDataList);
    }

    attractionQueueData = json.encode(attractionDataList);
  }

  /// Fetches data from a single URL and adds it to the provided list.
  ///
  /// [url] is the URL to fetch data from.
  /// [attractionDataList] is the list to store the fetched data.
  Future<void> _fetchDataFromUrl(String url, List<Map<String, dynamic>> attractionDataList) async {
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        attractionDataList.add(jsonData);
      } else {
        debugPrint('Failed to load data from $url: ${response.statusCode}');
      }
    } catch (e) {
      debugPrint('Error fetching data from $url: $e');
    }
  }
}