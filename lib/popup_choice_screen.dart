/*
 Project: AskMickey
 File: popup_choice_screen.dart
 Last Revised: September 05, 2024

 A widget that displays a popup dialog with a question and yes/no options.

 The [PopupChoiceScreen] widget creates an AlertDialog with a customizable question
 and two action buttons for user response. It is designed to be used as a modal
 dialog within the AskMickey application for quick user decisions.

 ## Parameters:
 - `question`: A string representing the question to be displayed in the dialog.

 ## Relationships with Other Files:
 - main_conversation_screen.dart: Uses PopupChoiceScreen to present user choices during conversations.
 - browser_screen.dart: Utilizes PopupChoiceScreen for confirmation before opening external links.
 - map_screen.dart: Employs PopupChoiceScreen for location-related confirmations.
 - animated_background.dart: PopupChoiceScreen appears on top of the AnimatedBackground when displayed.
*/

import 'package:flutter/material.dart';

// PopupChoiceScreen widget for displaying a modal dialog with a yes/no question
class PopupChoiceScreen extends StatelessWidget {
  // The question to be displayed in the dialog
  final String question;

  // Constructor requiring a question parameter
  const PopupChoiceScreen({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    // AlertDialog widget used to create the popup
    return AlertDialog(
      // Title of the dialog, set to a generic 'Question' text
      title: const Text('Question'),
      // Content of the dialog, displaying the provided question
      content: Text(question),
      // Action buttons for user response
      actions: [
        // 'Yes, please' button
        TextButton(
          // When pressed, closes the dialog and returns true
          onPressed: () => Navigator.of(context).pop(true),
          child: const Text('Yes, please'),
        ),
        // 'No, thanks' button
        TextButton(
          // When pressed, closes the dialog and returns false
          onPressed: () => Navigator.of(context).pop(false),
          child: const Text('No, thanks'),
        ),
      ],
    );
  }
}