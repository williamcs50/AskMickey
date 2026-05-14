/*
 File: progress_caption.dart
 Last Revised: September 08, 2024

 A widget that displays randomized animated captions with customizable options.

 The [ProgressCaption] widget allows you to show a series of captions that change
 at a specified interval. It provides options for customizing the text style,
 alignment, vertical positioning, and opacity within its parent widget.

 ## Parameters:
 - `captions`: A list of strings to display as captions. If null, default captions are used.
 - `changeInterval`: The time in seconds between caption changes. Default is 5 seconds.
 - `textStyle`: A [TextStyle] object to customize the appearance of the text. 
 - `textAlignment`: The alignment of the text within the widget. Default is centered.
 - `verticalPosition`: A double value between 0.0 (top) and 1.0 (bottom) to set the vertical position of the text. Default is 0.5 (center).
 - `textOpacity`: A double value between 0.0 (fully transparent) and 1.0 (fully opaque) to set the opacity of the text. Default is 1.0.
 */

import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';

/// A widget that displays a caption with animations and customizable options.
class ProgressCaption extends StatefulWidget {
  // Configuration options block
  static const List<String> defaultCaptions = [
    'Hang tight, magic is coming!',
    'Just a little longer, friends!',
    'Good things come to those waiting!',
    'Keep smiling, fun is on the way!',
    'Patience, adventure is just ahead!',
    'Excitement is building, stay tuned!',
    'Waiting is part of the fun!',
    'Almost there, stay cheerful, pals!',
    'Great things take a little time!',
    'Enjoy the moment, magic awaits!',
    'Believe in the magic of waiting!',
    'Your patience will be rewarded!',
    'Adventure is just around the corner!',
    'Stay tuned for the fun ahead!',
    'The best is yet to come!',
    'Magic happens when you least expect it!',
    'Keep your spirits high, fun is coming!',
    'Good things are worth the wait!',
    'Every moment counts, enjoy the ride!',
    'The wait makes the experience sweeter!'
  ];

  // Default configuration values
  static const int defaultChangeInterval = 5; // Default interval for changing captions (in seconds)
  static const double defaultFontSize = 44.0; // Default font size
  static const FontWeight defaultFontWeight = FontWeight.w100; // Default font weight
  static const Color defaultTextColor = Color.fromARGB(255, 182, 11, 142); // Default text color
  static const AlignmentGeometry defaultTextAlignment = Alignment.center; // Default text alignment
  static const String defaultFontFamily = 'DisneyFont'; // Default font family
  static const double defaultVerticalPosition = 0.88; // Default vertical position (center)
  static const double defaultTextOpacity = 0.99; // Default text opacity

  /// List of captions to display. If null, default captions will be used.
  final List<String>? captions;

  /// Interval for changing captions (in seconds).
  final int changeInterval;

  /// Text style for the caption (size, font, color, etc.).
  final TextStyle textStyle;

  /// Alignment of the text within its parent widget.
  final AlignmentGeometry textAlignment;

  /// Vertical position of the text within its parent widget.
  final double verticalPosition; // Range: 0.0 (top) to 1.0 (bottom)

  /// Opacity of the text.
  final double textOpacity; // Range: 0.0 (fully transparent) to 1.0 (fully opaque)

  /// Creates a [ProgressCaption] widget with customizable options.
  const ProgressCaption({
    super.key,
    this.captions,
    this.changeInterval = defaultChangeInterval,
    TextStyle? textStyle,
    this.textAlignment = defaultTextAlignment,
    this.verticalPosition = defaultVerticalPosition,
    this.textOpacity = defaultTextOpacity,
  })  : textStyle = textStyle ?? const TextStyle(
            fontSize: defaultFontSize,
            fontWeight: defaultFontWeight,
            color: defaultTextColor,
            fontFamily: defaultFontFamily,
          );

  @override
  ProgressCaptionState createState() => ProgressCaptionState();
}

class ProgressCaptionState extends State<ProgressCaption> with SingleTickerProviderStateMixin {
  late String _currentCaption;
  late Timer _timer;
  final Random _random = Random();
  late AnimationController _controller;
  bool _isFirstCaption = true;

  @override
  void initState() {
    super.initState();
    _currentCaption = _getRandomCaption();
    
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    _controller.dispose();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: widget.changeInterval), (timer) {
      _updateCaption();
    });
  }

  void _updateCaption() {
    if (mounted) {
      _controller.forward().then((_) {
        setState(() {
          _currentCaption = _getRandomCaption();
        });
        _controller.reverse();
      });
    }
  }

  String _getRandomCaption() {
    final captions = widget.captions ?? ProgressCaption.defaultCaptions;
    String newCaption;
    if (_isFirstCaption) {
      newCaption = captions[_random.nextInt(captions.length)];
      _isFirstCaption = false;
    } else {
      do {
        newCaption = captions[_random.nextInt(captions.length)];
      } while (newCaption == _currentCaption);
    }
    return newCaption;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: MediaQuery.of(context).size.height * (1 - widget.verticalPosition) - 20,
          left: 0,
          right: 0,
          child: Align(
            alignment: widget.textAlignment,
            child: ScaleTransition(
              scale: Tween<double>(begin: 1.0, end: 1.5).animate(CurvedAnimation(
                parent: _controller,
                curve: Curves.easeIn,
              )),
              child: FadeTransition(
                opacity: Tween<double>(begin: 1.0, end: 0.0).animate(CurvedAnimation(
                  parent: _controller,
                  curve: Curves.easeOut,
                )),
                child: Opacity(
                  opacity: widget.textOpacity,
                  child: Text(
                    _currentCaption,
                    style: widget.textStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}