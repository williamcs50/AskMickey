/*
 Project: AskMickey
 File: url_launcher.dart
 Last Revised: September 01, 2024

 This file implements the UrlLauncher class, which provides a static method
 for launching URLs in external applications. It's a utility class used
 throughout the AskMickey application to open web links, maps, and other
 external resources.

 The [UrlLauncher] class encapsulates the functionality of the url_launcher
 package, providing a simplified interface for other parts of the application
 to use when needing to open URLs.

 ## Key Components:
 - UrlLauncher: Static class for launching URLs
 - launchURL: Static method to open a given URL in an external application

 ## Relationships with Other Files:
 - main_conversation_screen.dart: Uses UrlLauncher to open links provided in responses
 - maps.dart: Utilizes UrlLauncher to open Google Maps URLs for navigation
 - menu.dart: Employs UrlLauncher to open restaurant menu links
 - browser_screen.dart: May use UrlLauncher as an alternative to in-app web view
 - prompt_category.dart: Indirectly uses UrlLauncher through various response handlers
*/

import 'package:url_launcher/url_launcher.dart';

// Static class for launching URLs in external applications
class UrlLauncher {
  // Static method to launch a URL
  static Future<void> launchURL(String urlString) async {
    // Parse the URL string into a Uri object
    final Uri url = Uri.parse(urlString);
    
    // Attempt to launch the URL in an external application
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      // Throw an exception if the URL cannot be launched
      throw 'Could not launch $url';
    }
  }
}