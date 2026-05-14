/*
 Project: AskMickey
 File: menu.dart
 Last Revised: September 05, 2024

 This file implements the Menu class, which handles menu-related queries in the
 AskMickey application. It processes user requests for restaurant menus, interacts
 with the AI model to interpret queries, and generates responses with menu links.

 The [Menu] class interprets user prompts about restaurant menus, extracts
 restaurant information, and constructs responses with options to view menus.

 ## Key Components:
 - Menu: Main class for processing menu-related queries
 - execute: Primary method for handling menu requests and generating responses
 - _handleResponse: Processes the AI model's response
 - _createPromptResultFromJson: Constructs a PromptResult from parsed JSON data

 ## Relationships with Other Files:
 - llm_gemini.dart: Provides the GeminiService for AI-powered query interpretation
 - string_constants.dart: Contains constant strings used in prompt construction
 - dining_menu_url_string.dart: Contains URL information for restaurant menus
 - prompt_category.dart: Defines the PromptResult class and routes menu queries here
 - main_conversation_screen.dart: Initiates menu queries and displays results
*/
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'llm_gemini.dart';
import 'string_constants.dart';
import 'dining_menu_url_string.dart';
import 'prompt_category.dart';

// Main class for handling menu-related queries
class Menu {
  // Instance of GeminiService for AI interactions
  final GeminiService _llm = GeminiService();

  // Constants for user-friendly messages
  static const String restaurantNotFoundMessage = 
      "Hey there, pal! I see you're searching for a menu, but I'm scratching my head trying to figure out which restaurant you're talking about! Tell me more, and let's find that delicious meal together!";
  static const String jsonParseErrorMessage = 
      "I'm sorry, but I couldn't understand the restaurant information. Please try asking in a different way.";
  static const String missingInfoErrorMessage = 
      "I'm sorry, but I couldn't find the restaurant information. Please try asking in a different way.";

  // Primary method to execute menu requests
  Future<PromptResult> execute(String originalPrompt) async {
    // Construct the prompt for the LLM
    final combinedPrompt = '$MenuPrepend $originalPrompt $MenuPostpend $diningMenuUrl';

    // Get response from LLM
    final llmResponse = await _llm.generateResponse(combinedPrompt, numberOfLLMIterations: 1);

    // Process the LLM's response
    return _handleResponse(llmResponse.trim());
  }

  // Method to handle and process the LLM's response
  Future<PromptResult> _handleResponse(String llmResponse) async {
    // Check for specific "Cannot Find Restaurant" response
    if (llmResponse.trim() == "Cannot Find Restaurant") {
      return PromptResult(response: restaurantNotFoundMessage, showButtons: false, url: null);
    }

    // Remove wrapping triple backticks and optional 'json' language identifier
    final cleanedResponse = llmResponse.replaceAllMapped(
      RegExp(r'^```(?:json)?\s*([\s\S]*?)\s*```$', multiLine: true),
      (match) => match.group(1) ?? '',
    ).trim();

    // Attempt to parse JSON response
    if (cleanedResponse.isNotEmpty && (cleanedResponse.startsWith('{') || cleanedResponse.startsWith('['))) {
      try {
        final responseJson = json.decode(cleanedResponse);
        return _createPromptResultFromJson(responseJson);
      } catch (e) {
        debugPrint("Error processing response: $e");
        return PromptResult(response: jsonParseErrorMessage, showButtons: false, url: null);
      }
    } else {
      // Handle non-JSON responses
      debugPrint("Received non-JSON response: $llmResponse");
      return PromptResult(response: jsonParseErrorMessage, showButtons: false, url: null);
    }
  }

  // Method to create a PromptResult from parsed JSON data
  PromptResult _createPromptResultFromJson(Map<String, dynamic> responseJson) {
    final restaurantName = responseJson['restaurant'] as String?;
    final menuLink = responseJson['menu_link'] as String?;

    // Check if required information is present
    if (restaurantName == null || menuLink == null) {
      return PromptResult(response: missingInfoErrorMessage, showButtons: false, url: null);
    }

    // Construct a successful response with menu link
    return PromptResult(
      response: "Oh boy, oh boy! **$restaurantName!** That's a fantastic choice! Would you like me to show you the menu?",
      showButtons: true,
      url: menuLink,
    );
  }
}