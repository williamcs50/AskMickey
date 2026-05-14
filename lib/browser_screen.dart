/*
 Project: AskMickey
 File: browser_screen.dart
 Last Revised: September 05, 2024

 This file implements the BrowserScreen widget, which is designed to display
 web content within the AskMickey application.

 The [BrowserScreen] widget creates a new screen with an AppBar and a centered
 text message indicating where web content would be displayed. It is designed
 to be navigated to from other parts of the app when external web content
 needs to be shown.

 ## Key Components:
 - BrowserScreen: StatelessWidget for displaying web content
 - AppBar: Provides navigation and title for the screen
 - Center and Text widgets: Display placeholder message for web content

 ## Relationships with Other Files:
 - main_conversation_screen.dart: Navigates to BrowserScreen when web content needs to be displayed
 - animated_background.dart: BrowserScreen is displayed on top of the AnimatedBackground
 - url_launcher.dart: Works in conjunction with BrowserScreen to handle external URLs
 - main.dart: Includes BrowserScreen in the app's navigation structure
*/

import 'package:flutter/material.dart';

/// A screen that displays web content within the AskMickey application.
class BrowserScreen extends StatelessWidget {
  /// The URL of the web content to be displayed.
  final String url;

  /// Constructor requiring a URL parameter.
  const BrowserScreen({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar with title and back button
      appBar: _buildAppBar(context),
      // Body of the screen with centered placeholder text
      body: _buildBody(),
    );
  }

  /// Builds the AppBar for the BrowserScreen.
  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      title: const Text('Web Content'),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () => Navigator.pop(context), // Navigate back to previous screen
      ),
    );
  }

  /// Builds the body of the BrowserScreen.
  Widget _buildBody() {
    return Center(
      child: Text('Web content for $url would be displayed here'),
    );
  }
}