/*
 Project: AskMickey
 File: parking_location.dart
 Last Revised: September 05, 2024

 This file implements the ParkingLocation class, which handles user queries
 related to finding their parked car in Disney World. It interacts with the
 LocationService to retrieve current and saved parking locations, and generates
 appropriate responses and navigation options.

 The [ParkingLocation] class processes requests for parking location information,
 checks the availability of saved and current locations, and provides directions
 when possible.

 ## Key Components:
 - ParkingLocation: Main class for handling parking location queries
 - execute: Method to process the parking location request and generate a response
 - constructMapsUrl: Helper method to create a Google Maps URL for navigation

 ## Relationships with Other Files:
 - location_service.dart: Provides functionality to get current location and retrieve saved parking location
 - prompt_category.dart: Defines the PromptResult class used for structuring responses
 - main_conversation_screen.dart: Utilizes ParkingLocation to handle user queries about finding their car
 - welcome_screen.dart: Responsible for saving the initial parking location used by this class
 - maps.dart: Shares similar functionality for generating map URLs
*/

import 'package:geolocator/geolocator.dart';
import 'location_service.dart';
import 'prompt_category.dart';

// Main class for handling parking location queries
class ParkingLocation {
  // Method to execute the parking location request
  Future<PromptResult> execute(String originalInput) async {
    // Attempt to get the current location
    await LocationService.getCurrentLocation();

    String response;
    bool showButtons = false;
    String? mapsUrl;

    // Check if parking location was saved and if current location is available
    if (LocationService.parkingLocation == null) {
      // Case: User didn't save parking location
      response = "Aw, shucks! I'm really sorry, pal, but we didn't save your parking location this time. But don't worry! Next time, just remember to start AskMickey and hit 'Save' as soon as your parked! It'll make your day even more magical!";
    } else if (LocationService.currentLocation != null) {
      // Case: User saved parking location and we have current location
      response = "Wow, it's been such a great day, hasn't it? You're ready to head back to your car? I can help you find your way! Would you like me to show you a map?";
      showButtons = true;
      mapsUrl = constructMapsUrl(LocationService.currentLocation!, LocationService.parkingLocation!);
    } else {
      // Case: User saved parking location but we can't get current location
      response = "I remember where you parked, but I'm having trouble finding your current location. Make sure your device's location services are enabled and try again.";
    }

    // Return a PromptResult with the appropriate response, button flag, and URL
    return PromptResult(response: response, showButtons: showButtons, url: mapsUrl);
  }

  // Helper method to construct a Google Maps URL for navigation
  String constructMapsUrl(Position currentLocation, Position parkingLocation) {
    return 'https://www.google.com/maps/dir/?api=1&origin=${currentLocation.latitude},${currentLocation.longitude}&destination=${parkingLocation.latitude},${parkingLocation.longitude}&travelmode=walking';
  }
}