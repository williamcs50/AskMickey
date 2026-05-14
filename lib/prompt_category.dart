/*
 Project: AskMickey
 File: prompt_category.dart
 Last Revised: September 05, 2024

 This file implements the PromptCategory class, which is responsible for
 processing user prompts and determining the appropriate response category.

 The PromptCategory class uses the GeminiService to generate an initial response,
 which is then used to select and execute the appropriate module for generating
 the final response.

 ## Key Components:
 - PromptResult: A class representing the result of processing a prompt
 - PromptCategory: The main class for categorizing and processing prompts

 ## Relationships with Other Files:
 - llm_gemini.dart: Provides the GeminiService for AI model interactions
 - inappropriate_prompt.dart, indeterminate_category.dart, not_disney_related.dart,
   weather.dart, attraction_queue.dart, attraction_info.dart, dining.dart,
   menu.dart, maps.dart, parking_location.dart, fun_facts.dart,
   conversation_continuation.dart: These files contain specific modules for
   handling different types of user queries
 - string_constants.dart: Contains constant strings used in prompt processing
 - main_conversation_screen.dart: Likely uses PromptCategory to process user inputs
*/

import 'dart:async';
import 'llm_gemini.dart';
import 'inappropriate_prompt.dart';
import 'indeterminate_category.dart';
import 'not_disney_related.dart';
import 'weather.dart';
import 'attraction_queue.dart';
import 'attraction_info.dart';
import 'dining.dart';
import 'menu.dart';
import 'maps.dart';
import 'parking_location.dart';
import 'fun_facts.dart';
import 'conversation_continuation.dart';
import 'system_administration.dart';
import 'string_constants.dart';
import 'package:flutter/material.dart';


// Represents the result of processing a prompt
class PromptResult {
  final String response; // The generated response
  final bool showButtons; // Whether to show additional buttons in the UI
  final String? url; // An optional URL associated with the response

  PromptResult({required this.response, this.showButtons = false, this.url});
}

// Main class for categorizing and processing prompts
class PromptCategory {
  final GeminiService _llm; // Instance of GeminiService for AI interactions

  PromptCategory(this._llm);

  // Processes the prompt and returns the PromptResult
  Future<PromptResult> processPrompt(String input) async {

     // Combine the constant prepend text, input, and postpend text
    String combinedInput = '$PromptCategoryPrepend $input $PromptCategoryPostpend';

    // Pass the combined input to the Gemini LLM
    String response = await _llm.generateResponse(combinedInput, numberOfLLMIterations: 1);


    // Execute the corresponding module based on the response
    return await _executeModule(response, input);
    
  }

  // Executes the appropriate module based on the LLM response
  Future<PromptResult> _executeModule(String response, String originalInput) async {

  
    switch (response.trim()) {
      case 'Inappropriate Prompt':
        return await InappropriatePrompt().execute(originalInput);
      case 'Indeterminate Category':
        return await IndeterminateCategory().execute(originalInput);
      case 'Not Disney Related':
        return await NotDisneyRelated().execute(originalInput);
      case 'Weather':
        return await Weather().execute(originalInput);
      case 'Ride Wait':  // Changed from 'Attraction Queue' due to safety concerns with Gemini
        return await AttractionQueue().execute(originalInput);
      case 'Attraction Information':
        return await AttractionInfo().execute(originalInput);
      case 'Dining':
        return await Dining().execute(originalInput);
      case 'Menu':
        return await Menu().execute(originalInput);
      case 'Maps':
        return await Maps().execute(originalInput);
      case 'Parking Location':
        return await ParkingLocation().execute(originalInput);
      case 'Fun Facts':
        return await FunFacts().execute(originalInput);
      case 'Conversation Continuation':
        return await ConversationContinuation().execute(originalInput);
      case 'System Administration':
        return await SystemAdministration(_llm).execute(originalInput);
      default:
        debugPrint('No module found for response: $response');
        debugPrint('original prompt: $originalInput');
        return PromptResult(response: '''Oops, I'm real sorry pal but I got confused. Could you please try that again?.''');
    }
  }
}