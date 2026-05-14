/*
 Project: AskMickey
 File: animated_background.dart
 Last Revised: September 05, 2024

 This file implements an animated starry background for the AskMickey application.

 The [AnimatedBackground] widget creates a dynamic, animated background with
 twinkling stars. It is designed to be used as a decorative element across
 various screens in the app, providing a consistent and engaging visual theme.

 ## Key Components:
 - AnimatedBackground: Main widget for the animated background
 - Star: Represents individual stars in the background
 - StarPainter: Custom painter for rendering stars
 - SmoothFadeCurve: Custom animation curve for star fading effect

 ## Relationships with Other Files:
 - main.dart: Uses AnimatedBackground as the base layer for the entire app UI
 - welcome_screen.dart: Incorporates AnimatedBackground for the initial app screen
 - main_conversation_screen.dart: Utilizes AnimatedBackground as the backdrop for user interactions
 - browser_screen.dart: Employs AnimatedBackground for consistency in the browsing interface
 - map_screen.dart: Integrates AnimatedBackground behind map elements
*/

import 'package:flutter/material.dart';
import 'dart:math';

/// A widget that creates an animated starry background.
class AnimatedBackground extends StatefulWidget {
  /// The child widget to be displayed on top of the animated background.
  final Widget child;

  /// The number of stars to generate in the background.
  final int starCount;

  /// The duration of a single animation cycle.
  final Duration animationDuration;

  /// Creates an [AnimatedBackground] widget.
  ///
  /// The [child] parameter is required and specifies the widget to be
  /// displayed on top of the animated background.
  ///
  /// The [starCount] parameter defaults to 50 stars.
  ///
  /// The [animationDuration] parameter defaults to 5 seconds.
  const AnimatedBackground({
    super.key,
    required this.child,
    this.starCount = 50,
    this.animationDuration = const Duration(seconds: 5),
  });

  @override
  AnimatedBackgroundState createState() => AnimatedBackgroundState();
}

/// The state for the [AnimatedBackground] widget.
class AnimatedBackgroundState extends State<AnimatedBackground> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;
  late final List<Star> _stars;

  @override
  void initState() {
    super.initState();
    _stars = List.generate(widget.starCount, (_) => Star());
    _setupAnimation();
  }

  void _setupAnimation() {
    _controller = AnimationController(
      vsync: this,
      duration: widget.animationDuration,
    )..repeat();

    _animation = CurvedAnimation(
      parent: _controller,
      curve: const SmoothFadeCurve(),
    );

    _animation.addListener(_updateStarsOnReset);
  }

  void _updateStarsOnReset() {
    if (_animation.value < 0.01) {
      setState(() {
        for (var star in _stars) {
          star.updatePosition();
        }
      });
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return CustomPaint(
              painter: StarPainter(_stars, _animation.value),
              size: Size.infinite,
            );
          },
        ),
        Center(child: widget.child),
      ],
    );
  }
}

/// Represents a single star in the animated background.
class Star {
  /// The x-coordinate of the star.
  double x;

  /// The y-coordinate of the star.
  double y;

  /// The size of the star.
  final double size;

  /// Creates a [Star] with random position and size.
  Star()
      : x = _generateRandomPosition(),
        y = _generateRandomPosition(),
        size = _generateRandomSize();

  /// Updates the position of the star randomly.
  void updatePosition() {
    x = _generateRandomPosition();
    y = _generateRandomPosition();
  }

  static double _generateRandomPosition() => Random().nextDouble();
  static double _generateRandomSize() => Random().nextDouble() * 2 + 0.5;
}

/// A custom painter for rendering stars in the animated background.
class StarPainter extends CustomPainter {
  /// The list of stars to paint.
  final List<Star> stars;

  /// The current animation value, used for opacity.
  final double animationValue;

  /// Creates a [StarPainter] with the given stars and animation value.
  StarPainter(this.stars, this.animationValue);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    final starPath = Path();

    for (final star in stars) {
      paint.color = const Color.fromARGB(240, 114, 129, 177).withOpacity(animationValue);

      final center = Offset(star.x * size.width, star.y * size.height);
      final radius = star.size * 3;

      _drawStarPath(starPath, center, radius);
      canvas.drawPath(starPath, paint);
      starPath.reset();
    }
  }

  void _drawStarPath(Path path, Offset center, double radius) {
    for (int i = 0; i < 5; i++) {
      final angle = i * 4 * pi / 5 - pi / 2;
      final point = Offset(
        center.dx + radius * cos(angle),
        center.dy + radius * sin(angle),
      );
      i == 0 ? path.moveTo(point.dx, point.dy) : path.lineTo(point.dx, point.dy);
    }
    path.close();
  }

  @override
  bool shouldRepaint(covariant StarPainter oldDelegate) =>
      oldDelegate.animationValue != animationValue;
}

/// A custom curve for smooth fading effect in the star animation.
class SmoothFadeCurve extends Curve {
  /// Creates a [SmoothFadeCurve].
  const SmoothFadeCurve();

  @override
  double transform(double t) {
    return 0.5 * (1 + sin(2 * pi * t - pi / 2));
  }
}