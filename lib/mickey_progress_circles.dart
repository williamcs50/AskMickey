/*
 Project: AskMickey
 File: mickey_progess_circles.dart
 Last Revised: September 01, 2024

 A widget that displays a Mickey Mouse-themed progress indicator with optional captions.

 The [MickeyMouseProgressIndicator] widget creates a visual representation of a
 loading state using three circular progress indicators arranged to resemble
 Mickey Mouse's head and ears. It also allows for the display of animated captions
 beneath the progress indicator.

 ## Parameters:
 - `width`: The width of the entire widget. Default is 200.
 - `height`: The height of the entire widget. Default is 400.
 - `color`: The color of the progress indicator circles. Default is a shade of purple.
 - `strokeWidth`: The stroke width of the progress indicator circles. Default is 5.
 - `verticalOffset`: The vertical offset for positioning the circles. Default is 120.
 - `captions`: A list of strings to display as captions. If null, no captions are used.
 - `captionChangeInterval`: The time in seconds between caption changes. Default is 5 seconds.
 - `showCaptions`: A boolean to determine if captions should be displayed. Default is true.

 ## Relationships with Other Files:
 - progress_caption.dart: Provides the ProgressCaption widget used for displaying captions
 - main_conversation_screen.dart: Utilizes MickeyMouseProgressIndicator to indicate loading states
 - welcome_screen.dart: Displays MickeyMouseProgressIndicator during initial loading or setup
*/

import 'package:flutter/material.dart';
import 'progress_caption.dart';

// MickeyMouseProgressIndicator widget for displaying a themed loading indicator
class MickeyMouseProgressIndicator extends StatelessWidget {
  // Parameters for customizing the widget
  final double width;
  final double height;
  final Color color;
  final double strokeWidth;
  final double verticalOffset;
  final List<String>? captions;
  final int captionChangeInterval;
  final bool showCaptions;

  // Constructor with default values for parameters
  const MickeyMouseProgressIndicator({
    super.key,
    this.width = 200,
    this.height = 400,
    this.color = const Color(0xFF880299),
    this.strokeWidth = 5,
    this.verticalOffset = 120,
    this.captions,
    this.captionChangeInterval = 5,
    this.showCaptions = true,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Stack(
        children: [
          // Position the circles to resemble Mickey Mouse's head and ears
          Transform.translate(
            offset: Offset(0, verticalOffset),
            child: Stack(
              children: [
                _buildCircle(left: 37.5, top: 150, size: 125), // Head
                _buildCircle(left: 0, top: 100, size: 70),     // Left ear
                _buildCircle(right: 0, top: 100, size: 70),    // Right ear
              ],
            ),
          ),
          // Optional captions displayed below the progress indicator
          if (showCaptions)
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ProgressCaption(
                  captions: captions,
                  changeInterval: captionChangeInterval,
                ),
              ),
            ),
        ],
      ),
    );
  }

  // Helper method to build each circular progress indicator
  Widget _buildCircle({double? left, double? right, required double top, required double size}) {
    return Positioned(
      left: left,
      right: right,
      top: top,
      child: SizedBox(
        width: size,
        height: size,
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(color),
          strokeWidth: strokeWidth,
        ),
      ),
    );
  }
}