/*
 Project: AskMickey
 File: nearest_restroom.dart
 Last Revised: September 05, 2024

 This file implements the Restroom and NearestRestroom classes, which are responsible
 for managing restroom location data and finding the nearest restroom based on given coordinates.

 The [Restroom] class represents individual restroom locations within Disney World.
 The [NearestRestroom] class provides functionality to find the closest restroom
 to a given set of coordinates using the Haversine formula for distance calculation.

 ## Key Components:
 - Restroom: Data class for storing restroom information
 - NearestRestroom: Static class with methods for finding the nearest restroom
 - findNearest: Method to determine the closest restroom to given coordinates
 - _calculateDistance: Helper method to calculate distance between two points

 ## Relationships with Other Files:
 - maps.dart: Uses NearestRestroom to provide restroom location information for navigation
 - main_conversation_screen.dart: Indirectly uses this through map-related queries
 - prompt_category.dart: Directs restroom-related queries to use this functionality
 - location_service.dart: Provides current location data used in conjunction with this class
*/

import 'dart:math';
import 'package:flutter/foundation.dart'; // Import for debugPrint

// Represents a single restroom location
class Restroom {
  final String name;
  final double latitude;
  final double longitude;

  Restroom(this.name, this.latitude, this.longitude);
}

// Static class for managing restroom data and finding nearest restrooms
class NearestRestroom {
  // List of all restroom locations in Disney World
  static final List<Restroom> restrooms = [
    Restroom("World Nature Restrooms", 28.37364000, -81.55051000),
    Restroom("Spaceship Earth West Restrooms", 28.37528000, -81.54980000),
    Restroom("Spaceship Earth East Restrooms", 28.37528000, -81.54899000),
    Restroom("The Seas with Nemo and Friends Restrooms", 28.37578000, -81.55160000),
    Restroom("Main Entrance West Restrooms", 28.37649000, -81.55082000),
    Restroom("Connections Eatery Restrooms", 28.37449915, -81.54843441),
    Restroom("The Land 2nd Floor Restrooms", 28.37380865, -81.55266566),
    Restroom("The Land 1st Floor Restrooms", 28.37361017, -81.55217689),
    Restroom("World Discovery Restrooms", 28.37363303, -81.54824398),
    Restroom("Odyssey Center Restrooms", 28.37209487, -81.54789994),
    Restroom("Norway Restrooms", 28.37077912, -81.54699791),
    Restroom("Germany Restrooms", 28.36810813, -81.54730903),
    Restroom("The American Adventure Restrooms", 28.36763836, -81.54976677),
    Restroom("Morocco Restrooms", 28.36836596, -81.55198495),
    Restroom("France Restrooms", 28.36867921, -81.55354307),
    Restroom("International Gateway Restrooms", 28.36982658, -81.55316533),
    Restroom("United Kingdom Restrooms", 28.37072818, -81.55181629),
    Restroom("Rose Walk Restrooms", 28.37196722, -81.55037942),
    Restroom("Imagination Restrooms", 28.37293578, -81.55151003),
    Restroom("Nine Dragons Restaurant Restrooms", 28.37016943, -81.54656902),
  ];

  // Finds the nearest restroom to the given coordinates
  static Restroom findNearest(String coordinates) {
    debugPrint('**from nearest_restroom.dart** Finding nearest restroom for coordinates: $coordinates');

    // Parse the input coordinates
    List<String> parts = coordinates.split(',');
    double lat = double.parse(parts[0].trim());
    double lon = double.parse(parts[1].trim());

    // Initialize with the first restroom
    Restroom nearest = restrooms[0];
    double minDistance = _calculateDistance(lat, lon, nearest.latitude, nearest.longitude);
    debugPrint('**from nearest_restroom.dart** Initial nearest restroom: ${nearest.name} at distance: $minDistance km');

    // Check all other restrooms
    for (var restroom in restrooms.skip(1)) {
      double distance = _calculateDistance(lat, lon, restroom.latitude, restroom.longitude);
      debugPrint('**from nearest_restroom.dart** Checking restroom: ${restroom.name} at distance: $distance km');

      // Update nearest if a closer restroom is found
      if (distance < minDistance) {
        minDistance = distance;
        nearest = restroom;
        debugPrint('**from nearest_restroom.dart** New nearest restroom: ${nearest.name} at distance: $minDistance km');
      }
    }

    debugPrint('**from nearest_restroom.dart** Nearest restroom found: ${nearest.name} at coordinates: ${nearest.latitude}, ${nearest.longitude}');
    return nearest;
  }

  // Calculates the distance between two points using the Haversine formula
  static double _calculateDistance(double lat1, double lon1, double lat2, double lon2) {
    var p = 0.017453292519943295; // Pi/180
    var c = cos;
    var a = 0.5 - c((lat2 - lat1) * p) / 2 +
        c(lat1 * p) * c(lat2 * p) * (1 - c((lon2 - lon1) * p)) / 2;
    double distance = 12742 * asin(sqrt(a)); // Distance in kilometers
    debugPrint('**from nearest_restroom.dart** Calculated distance: $distance km between ($lat1, $lon1) and ($lat2, $lon2)');
    return distance;
  }
}