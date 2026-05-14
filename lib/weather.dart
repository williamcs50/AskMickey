/*
 Project: AskMickey
 File: weather.dart
 Last Revised: September 01, 2024

 This file implements the Weather class, which handles weather-related queries
 in the AskMickey application. It fetches real-time weather data, processes it,
 and generates AI-powered responses to user queries about weather conditions
 at Disney World.

 The [Weather] class combines user prompts with current weather data to provide
 accurate and context-aware responses about weather conditions and forecasts.

 ## Key Components:
 - Weather: Main class for handling weather-related queries
 - execute: Primary method for processing weather requests and generating responses
 - _fetchWeatherData: Method to retrieve current weather data from an external API
 - _cleanText: Helper method to clean and extract relevant weather information
 - _removeHtmlTags: Utility method to strip HTML tags from fetched data
 - printLongString: Debug utility for printing long strings in chunks

 ## Relationships with Other Files:
 - llm_gemini.dart: Provides the GeminiService for AI-powered response generation
 - string_constants.dart: Contains constant strings used in prompt construction
 - prompt_category.dart: Defines the PromptResult class and routes weather queries here
 - main_conversation_screen.dart: Utilizes Weather class to handle user queries about weather
 - url_launcher.dart: Used indirectly to open the weather radar URL provided in responses
*/

import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart' show debugPrint;
import 'llm_gemini.dart';
import 'string_constants.dart';
import 'prompt_category.dart';

// Main class for handling weather-related queries
class Weather {
  // Instance of GeminiService for AI interactions
  final GeminiService _llm = GeminiService();

  // Primary method to execute weather requests
  Future<PromptResult> execute(String originalPrompt) async {
    // Construct the combined prompt using constant strings and weather data
    String combinedPrompt = '$WeatherPrepend $originalPrompt $WeatherPostpend';
    String weatherData = await _fetchWeatherData();
    combinedPrompt += ' $weatherData';

    // Generate a response using the Gemini AI model
    String response = await _llm.generateResponse(combinedPrompt, numberOfLLMIterations: 3);
    
    // URL for the weather radar, to be included in the response
    String? url = 'https://radar.weather.gov/?settings=v1_eyJhZ2VuZGEiOnsiaWQiOiJ3ZWF0aGVyIiwiY2VudGVyIjpbLTgxLjM1NCwyOC41MzddLCJsb2NhdGlvbiI6Wy04MS40MTgsMjguNTE3XSwiem9vbSI6MTAuMTcwODU5OTU5NzI0OTQ4LCJsYXllciI6ImJyZWZfcWNkIn0sImFuaW1hdGluZyI6ZmFsc2UsImJhc2UiOiJzdGFuZGFyZCIsImFydGNjIjpmYWxzZSwiY291bnR5IjpmYWxzZSwiY3dhIjpmYWxzZSwicmZjIjpmYWxzZSwic3RhdGUiOmZhbHNlLCJtZW51Ijp0cnVlLCJzaG9ydEZ1c2VkT25seSI6ZmFsc2UsIm9wYWNpdHkiOnsiYWxlcnRzIjowLjgsImxvY2FsIjowLjYsImxvY2FsU3RhdGlvbnMiOjAuOCwibmF0aW9uYWwiOjAuNn19';

    // Return a PromptResult with the generated response, button flag, and URL
    return PromptResult(response: response, showButtons: true, url: url);
  }

  // Method to fetch weather data from an external API
  Future<String> _fetchWeatherData() async {
    const url = 'https://forecast.weather.gov/MapClick.php?lat=28.5383&lon=-81.3789&unit=0&lg=english&FcstType=text&TextType=1';

    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        return _cleanText(response.body);
      }
    } catch (e) {
      debugPrint('Error fetching weather data: $e');
    }

    return 'Unable to fetch weather data.';
  }

  // Method to clean and extract relevant weather information from API response
  String _cleanText(String text) {
    // Convert the text to lowercase for case-insensitive comparison
    String lowerCaseText = text.toLowerCase();

    // Find the index of "7-Day Forecast"
    int startIndex = lowerCaseText.indexOf('7-day forecast');
    // Find the index of "footer"
    int endIndex = lowerCaseText.indexOf('footer');

    // Check if both indices are found
    if (startIndex != -1 && endIndex != -1) {
      // Extract the relevant substring
      String relevantText = text.substring(startIndex, endIndex).trim();
      
      // Clean HTML/CSS formatting characters
      String cleanedText = _removeHtmlTags(relevantText);
      return cleanedText;
    }

    // If the indices are not found, return a message indicating no relevant data
    return 'Unable to fetch relevant weather data.';
  }

  // Method to remove HTML tags from text
  String _removeHtmlTags(String text) {
    // Use a regular expression to remove HTML tags
    String withoutHtml = text.replaceAll(RegExp(r'<[^>]*>'), '');
    // Replace multiple spaces with a single space and trim the result
    return withoutHtml.replaceAll(RegExp(r'\s+'), ' ').trim();
  }

  // Debug utility method to print long strings in chunks
  void printLongString(String text, {int chunkSize = 800}) {
    for (int i = 0; i < text.length; i += chunkSize) {
      debugPrint(text.substring(i, i + chunkSize > text.length ? text.length : i + chunkSize));
    }
  }
}