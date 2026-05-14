/*
 Project: AskMickey
 File: location_service.dart
 Last Revised: September 05, 2024

 This file implements the LocationService class, which manages location-related
 functionalities for the AskMickey application. It handles getting the current
 location, saving and loading parking locations, and formatting coordinates.

 The [LocationService] class provides static methods for location operations,
 making it easily accessible throughout the application without instantiation.

 ## Key Components:
 - LocationService: Main class for handling location-related operations
 - getCurrentLocation: Method to fetch and store the current device location
 - saveParkingLocation: Method to save the parking location to persistent storage
 - loadParkingLocation: Method to retrieve the saved parking location
 - _formatCoordinates: Helper method to format latitude and longitude
 - getFormattedCurrentLocation: Method to get the formatted current location
 - getFormattedParkingLocation: Method to get the formatted parking location

 ## Relationships with Other Files:
 - main_conversation_screen.dart: Uses LocationService for location-based queries
 - welcome_screen.dart: Utilizes LocationService to save initial parking location
 - maps.dart: Integrates with LocationService for map-related functionalities
 - parking_location.dart: Directly interacts with LocationService for parking info
 - prompt_category.dart: Uses location data for context in various prompts
*/

import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocationService {
  // Static variables to store current and parking locations
  static Position? currentLocation;
  static Position? parkingLocation;

  // Method to get and store the current device location
  static Future<void> getCurrentLocation() async {
    try {
      // Check and request location permissions
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
      }

      if (permission == LocationPermission.denied) {
        debugPrint('**location_service.dart** Location permissions are denied');
        currentLocation = null;
        return;
      }

      // Get the current position with high accuracy
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      currentLocation = position;
      debugPrint('**location_service.dart** Current Location: ${_formatCoordinates(position.latitude, position.longitude)}');
    } catch (e) {
      debugPrint('**location_service.dart** Error getting location: $e');
      currentLocation = null;
    }
  }

  // Method to save the parking location to SharedPreferences
  static Future<void> saveParkingLocation(Position position) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String formattedLocation = _formatCoordinates(position.latitude, position.longitude);
      List<String> coordinates = formattedLocation.split(', ');
      await prefs.setDouble('parking_latitude', double.parse(coordinates[0]));
      await prefs.setDouble('parking_longitude', double.parse(coordinates[1]));
      parkingLocation = position;
      debugPrint('**location_service.dart** Saved parking location: $formattedLocation');
    } catch (e) {
      debugPrint('**location_service.dart** Error saving parking location: $e');
    }
  }

  // Method to load the saved parking location from SharedPreferences
  static Future<void> loadParkingLocation() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      double? latitude = prefs.getDouble('parking_latitude');
      double? longitude = prefs.getDouble('parking_longitude');

      if (latitude != null && longitude != null) {
        parkingLocation = Position(
          latitude: latitude,
          longitude: longitude,
          timestamp: DateTime.now(),
          accuracy: 0.0,
          altitude: 0.0,
          heading: 0.0,
          speed: 0.0,
          speedAccuracy: 0.0,
          altitudeAccuracy: 0.0,
          headingAccuracy: 0.0,
        );
        debugPrint('**location_service.dart** Loaded parking location: ${_formatCoordinates(latitude, longitude)}');
      } else {
        debugPrint('**location_service.dart** No saved parking location found');
      }
    } catch (e) {
      debugPrint('**location_service.dart** Error loading parking location: $e');
    }
  }

  // Helper method to format coordinates to a string
  static String _formatCoordinates(double latitude, double longitude) {
    return '${latitude.toStringAsFixed(8)}, ${longitude.toStringAsFixed(8)}';
  }

  // Method to get the formatted current location
  static String? getFormattedCurrentLocation() {
    return currentLocation != null 
        ? _formatCoordinates(currentLocation!.latitude, currentLocation!.longitude) 
        : null;
  }

  // Method to get the formatted parking location
  static String? getFormattedParkingLocation() {
    return parkingLocation != null 
        ? _formatCoordinates(parkingLocation!.latitude, parkingLocation!.longitude) 
        : null;
  }
}