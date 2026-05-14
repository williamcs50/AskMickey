import 'package:flutter/material.dart';
import 'animated_background.dart';
import 'location_service.dart';
import 'string_constants.dart';
import 'mickey_progress_circles.dart';

// Main widget for the welcome screen
class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  WelcomeScreenState createState() => WelcomeScreenState(); // Change here
}

// State class for WelcomeScreen
class WelcomeScreenState extends State<WelcomeScreen> { // Change here
  // Constants for UI elements
  static const String _fallbackMessage = 'Welcome to AskMickey!';
  static const double welcomeMessageFontSize = 21.0;
  static const double buttonFontSize = 20.0;
  static const Color saveButtonColor = Colors.green;
  static const Color dontSaveButtonColor = Colors.red;

  static const String centeredText = "Ask Mickey";
  static const double centeredTextFontSize = 48.0;
  static const String centeredTextFontFamily = 'DisneyFont';

  bool _isSaving = false; // Flag to track if location is being saved

  // Loads the welcome message from string constants
  Future<String> _loadWelcomeMessage(BuildContext context) async {
    return WelcomeMessage;
  }

  // Saves the current location and navigates to the main screen
  Future<void> _saveLocationAndNavigate() async {
    setState(() {
      _isSaving = true;
    });

    await LocationService.getCurrentLocation();

    if (mounted) {
      if (LocationService.currentLocation != null) {
        await LocationService.saveParkingLocation(LocationService.currentLocation!);
        _navigateToMain(); // No context needed here
      } else {
        debugPrint('Could not retrieve current location.');
        // Show the Snackbar using the context only if the widget is mounted
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Uh-oh! Looks like we can\'t save that location right now. Let\'s give it another try, okay?'))
          );
        }
      }

      // Update the state only if the widget is still mounted
      if (mounted) {
        setState(() {
          _isSaving = false;
        });
      }
    }
  }

  // Navigates to the main conversation screen
  void _navigateToMain() {
    Navigator.pushReplacementNamed(context, '/main');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBackground(
        child: SafeArea(
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height: 20),
                          _buildCenteredTextBox(),
                          const SizedBox(height: 20),
                          _buildWelcomeMessage(context),
                        ],
                      ),
                    ),
                  ),
                  _buildActionButtons(context),
                ],
              ),
              if (_isSaving)
                Positioned.fill(
                  child: Container(
                    color: Colors.black54,
                    child: const Center(
                      child: MickeyMouseProgressIndicator(
                        width: 200,
                        height: 400,
                        color: Color(0xFF880299),
                        strokeWidth: 5,
                        verticalOffset: 120,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  // Builds the centered "Ask Mickey" text box with gradient effect
  Widget _buildCenteredTextBox() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: ShaderMask(
        shaderCallback: (bounds) => const LinearGradient(
          colors: [Colors.pink, Colors.blue],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ).createShader(bounds),
        child: const Text(
          centeredText,
          style: TextStyle(
            fontSize: centeredTextFontSize,
            color: Colors.white,
            fontFamily: centeredTextFontFamily,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  // Builds the welcome message widget
  Widget _buildWelcomeMessage(BuildContext context) {
    return FutureBuilder<String>(
      future: _loadWelcomeMessage(context),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        }

        final message = snapshot.data ?? _fallbackMessage;

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
          child: Text(
            message,
            style: const TextStyle(
              fontSize: welcomeMessageFontSize,
              color: Colors.white,
            ),
            textAlign: TextAlign.left,
          ),
        );
      },
    );
  }

  // Builds the action buttons for saving location or skipping
  Widget _buildActionButtons(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(0.5),
      padding: const EdgeInsets.all(16.0),
      child: SafeArea(
        top: false,
        child: Row(
          children: [
            Expanded(
              child: OutlinedButton(
                onPressed: _isSaving ? null : _saveLocationAndNavigate,
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  side: const BorderSide(color: Colors.green, width: 1.5),
                  backgroundColor: Colors.black,
                ),
                child: const Text(
                  'Save, please',
                  style: TextStyle(fontSize: buttonFontSize, color: saveButtonColor),
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: OutlinedButton(
                onPressed: _isSaving ? null : () => _navigateToMain(),
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  side: const BorderSide(color: Colors.red, width: 1.5),
                  backgroundColor: Colors.black,
                ),
                child: const Text(
                  "Don't save",
                  style: TextStyle(fontSize: buttonFontSize, color: dontSaveButtonColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}