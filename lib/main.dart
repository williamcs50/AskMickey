/*
 Project: AskMickey
 File: main.dart
 Last Revised: September 05, 2024

 This file serves as the main entry point for the AskMickey application.

 The [AskMickeyApp] widget is the root widget of the application, setting up
 the app's theme, home screen, and navigation structure. It incorporates
 various custom widgets and screens, creating a cohesive user interface.

 ## Key Components:
 - AskMickeyApp: Main app widget providing the app structure
 - AnimatedBackground: Custom widget for a starry animated background
 - Navigator: Manages navigation between different screens
 - ThemeData: Configures the app's visual theme

 ## Relationships with Other Files:
 - animated_background.dart: Provides the AnimatedBackground widget used in the app
 - welcome_screen.dart: Initial screen displayed to the user
 - main_conversation_screen.dart: Screen for main user interactions
 - browser_screen.dart: Screen for browsing functionality
 - map_screen.dart: Screen for map-related features
*/

import 'package:flutter/material.dart';
import 'animated_background.dart'; // Custom animated background widget
import 'welcome_screen.dart'; // Welcome screen widget
import 'main_conversation_screen.dart'; // Main conversation screen widget
import 'browser_screen.dart'; // Browser screen widget
import 'map_screen.dart'; // Map screen widget

// Define a constant string for the app title
const String appTitle = 'AskMickey';

// Main entry point of the app
void main() {
  WidgetsFlutterBinding.ensureInitialized(); // Ensure Flutter is initialized
  runApp(const AskMickeyApp()); // Run the main app widget
}

// Define the main app widget as a stateless widget
class AskMickeyApp extends StatelessWidget {
  const AskMickeyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Return a MaterialApp widget, which provides basic app structure and theming
    return MaterialApp(
      title: appTitle, // Set the app title
      theme: _buildAppTheme(), // Configure the app's theme
      home: const AskMickeyHomeScreen(), // Set the home screen
    );
  }

  // Build and return the app's theme
  ThemeData _buildAppTheme() {
    return ThemeData(
      primarySwatch: Colors.blue,
      textTheme: Typography.whiteMountainView,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          // Configure button style
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue.withOpacity(0.7),
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            fontFamily: 'Arial',
          ),
        ),
      ),
      scaffoldBackgroundColor: Colors.transparent, // Set transparent background
    );
  }
}

// Define the home screen as a separate stateless widget
class AskMickeyHomeScreen extends StatelessWidget {
  const AskMickeyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Set the home screen as a Scaffold (basic visual layout structure)
      body: AnimatedBackground(
        // Use custom AnimatedBackground widget
        child: Stack(
          // Stack allows widgets to be placed on top of each other
          children: [
            _buildBackgroundImage(),
            _buildNavigator(),
          ],
        ),
      ),
    );
  }

  // Build and return the background image widget
  Widget _buildBackgroundImage() {
    return const Positioned.fill(
      // Fill the entire screen with an image
      child: Image(
        image: AssetImage('assets/images/Mickey2.jpg'),
        width: 400,
        height: 400,
        // fit: BoxFit.cover, // Uncomment to make image cover the entire screen
      ),
    );
  }

  // Build and return the navigator widget
  Widget _buildNavigator() {
    return Navigator(
      // Use Navigator to manage app routes (screens)
      onGenerateRoute: _generateRoute,
      initialRoute: '/', // Set the initial route to the welcome screen
    );
  }

  // Generate routes based on route names
  Route _generateRoute(RouteSettings settings) {
    Widget page;
    switch (settings.name) {
      case '/':
        page = const WelcomeScreen();
        break;
      case '/main':
        page = const MainConversationScreen();
        break;
      case '/browser':
        page = const BrowserScreen(url: '');
        break;
      case '/map':
        page = const MapScreen();
        break;
      default:
        page = const WelcomeScreen();
    }
    // Use a custom PageRouteBuilder with no transition animation
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return child;
      },
      transitionDuration: Duration.zero,
      reverseTransitionDuration: Duration.zero,
    );
  }
}