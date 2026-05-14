/*
 Project: AskMickey
 File: main_conversation_screen.dart
 Last Revised: September 05, 2024

 This file implements the main conversation screen for the AskMickey application.

 The [MainConversationScreen] widget provides the primary user interface for 
 interacting with the AI assistant. It manages the chat messages, user input, 
 and integration with the GeminiService for AI responses.

 ## Key Components:
 - MainConversationScreen: The main widget for the conversation interface
 - ChatMessage: A model class representing individual chat messages
 - GeminiService: Handles interaction with the Gemini AI model
 - PromptCategory: Processes user prompts and determines appropriate responses

 ## Relationships with Other Files:
 - animated_background.dart: Provides the AnimatedBackground widget used as the screen background
 - prompt_category.dart: Contains the PromptCategory class for processing user prompts
 - MickeyProgressCircles.dart: Provides the loading indicator widget
 - url_launcher.dart: Handles opening URLs when requested
 - llm_gemini.dart: Contains the GeminiService class for AI model interactions
*/
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'animated_background.dart';
import 'prompt_category.dart';
import 'mickey_progress_circles.dart';
import 'url_launcher.dart';
import 'llm_gemini.dart'; // Import the GeminiService class

// Model class for chat messages
class ChatMessage {
  final String text;
  final bool isUser;
  final bool showButtons;
  final String? url;

  ChatMessage({
    required this.text,
    required this.isUser,
    this.showButtons = false,
    this.url,
  });
}

// Main widget for the conversation screen
class MainConversationScreen extends StatefulWidget {
  const MainConversationScreen({super.key});

  @override
  MainConversationScreenState createState() => MainConversationScreenState();
}

// State class for MainConversationScreen
class MainConversationScreenState extends State<MainConversationScreen> {
// Instance of GeminiService for AI interactions
  late final PromptCategory _promptCategory; // PromptCategory for processing user prompts

  // Constants for UI styles and button texts
  static const String _askMickeyButtonText = 'Ask Mickey';
  static const String _promptHintText = 'Hiya, pal! How can I help you today?';
  static const double _responseFontSize = 21.0;
  static const double _buttonFontSize = 40.0;

  MainConversationScreenState() : _promptCategory = PromptCategory(GeminiService()); // Initialize PromptCategory with GeminiService

  final List<ChatMessage> _messages = []; // List to store chat messages
  bool _isTyping = false; // Flag to indicate if the AI is "typing"
  final TextEditingController _promptController = TextEditingController(); // Controller for the input text field
  bool _isPressed = false; // Flag for button press animation

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBackground(
        child: SafeArea(
          child: Column(
            children: [
              _buildPromptTextField(),
              _buildAskMickeyButton(),
              _buildResponseArea(),
              if (_messages.isNotEmpty && _messages.last.showButtons) _buildYesNoButtons(),
            ],
          ),
        ),
      ),
    );
  }

  // Builds the text input field for user prompts
  Widget _buildPromptTextField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: TextField(
        controller: _promptController,
        decoration: InputDecoration(
          hintText: _promptHintText,
          hintStyle: const TextStyle(color: Colors.white70),
          enabledBorder: _buildInputBorder(),
          focusedBorder: _buildInputBorder(),
          filled: true,
          fillColor: Colors.black.withOpacity(0.5),
        ),
        style: const TextStyle(color: Colors.white, fontSize: 20.0),
        onTap: () => _promptController.clear(),
        onSubmitted: (_) => _askMickey(),
      ),
    );
  }

  // Builds the border for the input text field
  OutlineInputBorder _buildInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white, width: 2.0),
      borderRadius: BorderRadius.circular(10.0),
    );
  }

  // Builds the "Ask Mickey" button
  Widget _buildAskMickeyButton() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: GestureDetector(
        onTapDown: (_) => setState(() => _isPressed = true),
        onTapUp: (_) {
          setState(() => _isPressed = false);
          _askMickey();
        },
        onTapCancel: () => setState(() => _isPressed = false),
        child: ElevatedButton(
          onPressed: null,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
          ),
          child: Text(
            _askMickeyButtonText,
            style: TextStyle(
              fontFamily: 'DisneyFont',
              fontSize: _buttonFontSize,
              color: _isPressed ? Colors.purple[700] : Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  // Builds the area where chat messages are displayed
  Widget _buildResponseArea() {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: _isTyping
                ? [const MickeyMouseProgressIndicator()]
                : _messages.map((message) {
                    return message.isUser
                        ? Text(
                            message.text,
                            style: const TextStyle(color: Colors.white),
                          )
                        : MarkdownBody(
                            data: message.text,
                            styleSheet: MarkdownStyleSheet(
                              p: const TextStyle(fontSize: _responseFontSize, color: Colors.white),
                            ),
                          );
                  }).toList(),
          ),
        ),
      ),
    );
  }

  // Builds the Yes/No buttons for user interaction
  Widget _buildYesNoButtons() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: OutlinedButton(
              onPressed: _handleYesButtonPress,
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
                side: const BorderSide(color: Colors.green, width: 1.5),
                backgroundColor: Colors.black,
              ),
              child: const Text('Yes, please', style: TextStyle(fontSize: 20.0, color: Colors.green)),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: OutlinedButton(
              onPressed: _handleNoButtonPress,
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
                side: const BorderSide(color: Colors.red, width: 1.5),
                backgroundColor: Colors.black,
              ),
              child: const Text('No, thanks', style: TextStyle(fontSize: 20.0, color: Colors.red)),
            ),
          ),
        ],
      ),
    );
  }

  // Handles the user's prompt and gets a response from the AI
  Future<void> _askMickey() async {
    String prompt = _promptController.text.trim();
    if (prompt.isEmpty) return;

    setState(() {
      _messages.clear(); // Clear previous messages
      _messages.add(ChatMessage(text: prompt, isUser: true));
      _isTyping = true;
      _promptController.clear(); // Clear the text box after sending the message
    });

    try {
      // Process the prompt using PromptCategory
      PromptResult result = await _promptCategory.processPrompt(prompt);

      setState(() {
        _messages.add(ChatMessage(
          text: result.response,
          isUser: false,
          showButtons: result.showButtons,
          url: result.url,
        ));
        _isTyping = false;
      });
    } catch (e, stackTrace) {
    debugPrint('**MainConversationScreen** Error processing prompt: $e');
    debugPrint('Stack trace: $stackTrace');
    debugPrint('Prompt that caused the error: $prompt');
      setState(() {
        _isTyping = false; // Stop typing indicator on error
      });
    }
  }

  // Handles the "Yes" button press
  void _handleYesButtonPress() {
    if (_messages.isNotEmpty && _messages.last.url != null) {
      UrlLauncher.launchURL(_messages.last.url!);
    }
    _clearButtons();
  }

  // Handles the "No" button press
  void _handleNoButtonPress() {
    _clearButtons();
  }

  // Clears the Yes/No buttons after user interaction
  void _clearButtons() {
    setState(() {
      if (_messages.isNotEmpty) {
        _messages.last = ChatMessage(
          text: _messages.last.text,
          isUser: _messages.last.isUser,
          showButtons: false,
          url: null,
        );
      }
    });
  }
}