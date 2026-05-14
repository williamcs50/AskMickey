/*
 Project: AskMickey
 File: maps.dart
 Last Revised: September 05, 2024

 This file implements the Maps class, which handles map-related queries in the
 AskMickey application. It processes user requests for directions, integrates
 with location services, and generates Google Maps URLs for navigation.

 The [Maps] class interprets user prompts, extracts location information, and
 constructs responses with navigation options. It also handles special cases
 like finding the nearest restroom or using the user's current location.

 ## Key Components:
 - Maps: Main class for processing map-related queries
 - execute: Primary method for handling map requests and generating responses
 - _extractInfo: Helper method to parse LLM responses
 - _formatCoordinates: Method to standardize coordinate formatting
 - _constructMapsUrl: Builds the Google Maps URL for navigation

 ## Relationships with Other Files:
 - llm_gemini.dart: Provides the GeminiService for AI-powered query interpretation
 - string_constants.dart: Contains constant strings used in prompt construction
 - maps_coordinates_string.dart: Likely contains predefined map coordinates
 - prompt_category.dart: Defines the PromptResult class and routes map queries here
 - location_service.dart: Used for getting the user's current location
 - nearest_restroom.dart: Provides functionality to find the nearest restroom
 - main_conversation_screen.dart: Initiates map queries and displays results
*/

import 'dart:async';
import 'package:flutter/material.dart';
import 'llm_gemini.dart';
import 'string_constants.dart';
import 'prompt_category.dart';
import 'location_service.dart';
import 'nearest_restroom.dart';  // Import the nearest_restroom module

// Main class for handling map-related queries
class Maps {
  final GeminiService _llm = GeminiService();

  // Primary method to execute map requests
  Future<PromptResult> execute(String originalPrompt) async {
    debugPrint('**from maps.dart** Original prompt: $originalPrompt');

    // Construct the prompt for the LLM
    String combinedPrompt = '$MapsPrepend $originalPrompt $MapsPostpend';
    debugPrint('**from maps.dart** Combined prompt: $combinedPrompt');

    // Get response from LLM
    String llmResponse = await _llm.generateResponse(combinedPrompt, numberOfLLMIterations: 1);
    debugPrint('**from maps.dart** LLM Response: $llmResponse');

    // Extract location information from LLM response
    String fromName = _extractInfo(llmResponse, 'FROM_Location_Name:');
    String toName = _extractInfo(llmResponse, 'TO_Location_Name:');
    String fromCoordinates = _extractInfo(llmResponse, 'FROM_Location_Coordinates:');
    String toCoordinates = _extractInfo(llmResponse, 'TO_Location_Coordinates:');

    debugPrint('**from maps.dart** Extracted FROM Name: $fromName');
    debugPrint('**from maps.dart** Extracted TO Name: $toName');
    debugPrint('**from maps.dart** Extracted FROM Coordinates: $fromCoordinates');
    debugPrint('**from maps.dart** Extracted TO Coordinates: $toCoordinates');

    // Handle CURRENT_LOCATION case
    if (fromName.toUpperCase() == 'CURRENT_LOCATION') {
      await LocationService.getCurrentLocation();
      String? currentLocation = LocationService.getFormattedCurrentLocation();

      // Set CURRENT_LOCATION to a debug value (spaceship earth)
      currentLocation = '28.37527800, -81.54944400';

      fromName = 'your current location';
      fromCoordinates = currentLocation;
      debugPrint('**from maps.dart** Using current location: $fromCoordinates');
        }

    // Handle NEAREST_RESTROOM case
    if (toName.toUpperCase() == 'NEAREST_RESTROOM') {
      Restroom nearest = NearestRestroom.findNearest(fromCoordinates);
      toName = nearest.name;
      toCoordinates = '${nearest.latitude}, ${nearest.longitude}';
      debugPrint('**from maps.dart** Nearest restroom: $toName at $toCoordinates');
    }

    // Validate extracted information
    if (fromName.isEmpty || toName.isEmpty || fromCoordinates.isEmpty || toCoordinates.isEmpty) {
      debugPrint('**from maps.dart** Error: Missing required information from LLM response');
      return PromptResult(
        response: "Gosh! It seems like I'm missing some important details. Can you try asking me that again, pal?",
        showButtons: false,
        url: null
      );
    }

    // Format coordinates
    String formattedFromCoords = _formatCoordinates(fromCoordinates);
    String formattedToCoords = _formatCoordinates(toCoordinates);
    
    if (formattedFromCoords.isEmpty || formattedToCoords.isEmpty) {
      debugPrint('**from maps.dart** Error: Failed to format coordinates');
      return PromptResult(
        response: "Oh boy! Something went wrong with those location coordinates. How about we give it another try?",
        showButtons: false,
        url: null
      );
    }

    // Construct Google Maps URL
    String url = _constructMapsUrl(formattedFromCoords, formattedToCoords);
    debugPrint('**from maps.dart** Constructed URL: $url');
    
    // Prepare user-friendly response
    String response = "Hot dog! You want to go from **$fromName** to **$toName**? That's swell! Would you like to see a magical map to help you get there?";
    debugPrint('**from maps.dart** User-friendly response: $response');

    return PromptResult(response: response, showButtons: true, url: url);
  }

  // Helper method to extract information from LLM response
  String _extractInfo(String response, String prefix) {
    int start = response.indexOf(prefix);
    if (start != -1) {
      start += prefix.length;
      int end = response.indexOf('\n', start);
      if (end == -1) end = response.length;
      return response.substring(start, end).trim();
    }
    return '';
  }

  // Method to format coordinates consistently
  String _formatCoordinates(String coords) {
    debugPrint('**from maps.dart** Formatting coordinates: $coords');
    try {
      List<String> parts = coords.split(',');
      if (parts.length == 2) {
        double latitude = double.parse(parts[0].trim());
        double longitude = double.parse(parts[1].trim());
        return '${latitude.toStringAsFixed(8)},${longitude.toStringAsFixed(8)}';
      }
    } catch (e) {
      debugPrint('**from maps.dart** Error parsing coordinates: $e');
    }
    return '';
  }

  // Method to construct the Google Maps URL
  String _constructMapsUrl(String from, String to) {
    debugPrint('**from maps.dart** Final FROM coordinates: $from');
    debugPrint('**from maps.dart** Final TO coordinates: $to');
    
    String encodedFrom = Uri.encodeComponent(from);
    String encodedTo = Uri.encodeComponent(to);
    String url = 'https://www.google.com/maps/dir/?api=1&origin=$encodedFrom&destination=$encodedTo&travelmode=walking&maptype=satellite';
    
    debugPrint('**from maps.dart** Constructed Maps URL: $url');
    return url;
  }
}