import 'package:flutter/material.dart';
import 'package:flutter_extend/src/extensions/number/number_duration_extensions.dart';
import 'package:flutter_animate/flutter_animate.dart';

extension FadeInAnimationExtensions on Widget {
  /// Applies a simple opacity fade-in animation.
  ///
  /// **NOTE:** This relies on the [animate] method provided by an external
  /// animation package (e.g., `flutter_animate`).
  ///
  /// @param delay The duration to wait before starting the animation (in milliseconds).
  /// @param begin The initial opacity value (default: 0.0, completely transparent).
  /// @param duration The length of the animation (in milliseconds).
  /// @param repeat If true, the animation loops indefinitely.
  /// @param reverse If true, reverses direction when repeating (fade in, then fade out).
  /// @param autoPlay If true, the animation starts automatically (default: true).
  /// @param curve The curve to use for the animation speed (default: [Curves.easeIn]).
  /// @param onInit A callback fired when the [AnimationController] is initialized.
  /// @returns The widget wrapped with the fade-in animation.
  ///
  /// Example (Standard Entrance):
  /// ```dart
  /// Text('Hello').fadeIn(duration: 800, delay: 200)
  /// ```
  Widget fadeIn(
          {int delay = 0,
          double begin = 0,
          int duration = 500,
          bool repeat = false,
          bool reverse = false,
          bool autoPlay = true,
          Curve? curve,
          void Function(AnimationController)? onInit}) =>
      animate(
              delay: delay.milliSeconds,
              autoPlay: autoPlay,
              onInit: onInit,
              onPlay: (controller) {
                if (repeat) {
                  controller.repeat(reverse: reverse);
                }
              })
          .fadeIn(
              duration: duration.milliSeconds,
              begin: begin,
              curve: curve ?? Curves.easeIn);

  /// Applies a simple opacity fade-out animation.
  ///
  /// **NOTE:** This relies on an external animation package.
  ///
  /// @param delay The duration to wait before starting the animation (in milliseconds).
  /// @param begin The initial opacity value (default: 1.0, fully opaque).
  /// @param duration The length of the animation (in milliseconds).
  /// @param repeat If true, the animation loops indefinitely.
  /// @param reverse If true, reverses direction when repeating.
  /// @param autoPlay If true, the animation starts automatically (default: true).
  /// @param curve The curve to use for the animation speed (default: [Curves.easeIn]).
  /// @param onInit A callback fired when the [AnimationController] is initialized.
  /// @returns The widget wrapped with the fade-out animation.
  Widget fadeOut(
          {int delay = 0,
          double begin = 1,
          int duration = 500,
          bool repeat = false,
          bool reverse = false,
          bool autoPlay = true,
          Curve? curve,
          void Function(AnimationController)? onInit}) =>
      animate(
              delay: delay.milliSeconds,
              autoPlay: autoPlay,
              onInit: onInit,
              onPlay: (controller) {
                if (repeat) {
                  controller.repeat(reverse: reverse);
                }
              })
          .fadeOut(
              duration: duration.milliSeconds,
              begin: begin,
              curve: curve ?? Curves.easeIn);

  /// Applies a combined fade-in and slide-up entrance animation from the bottom.
  ///
  /// @param verticalOffset The distance (in pixels) the widget moves up from (default: 50).
  /// @param duration The length of the animation (in milliseconds).
  /// @param curve The curve to use for the animation speed (default: [Curves.ease]).
  /// @returns The widget wrapped with the combined animation effect.
  ///
  /// Example (Common bottom-screen entrance):
  /// ```dart
  /// const Card().fadeInMoveInBottom(verticalOffset: 100)
  /// ```
  Widget fadeInMoveInBottom(
          {int delay = 0,
          double verticalOffset = 50,
          int duration = 500,
          bool repeat = false,
          bool reverse = false,
          bool autoPlay = true,
          Curve? curve,
          void Function(AnimationController)? onInit}) =>
      animate(
              delay: delay.milliSeconds,
              autoPlay: autoPlay,
              onInit: onInit,
              onPlay: (controller) {
                if (repeat) {
                  controller.repeat(reverse: reverse);
                }
              })
          .fadeIn(
              duration: duration.milliSeconds,
              begin: 0,
              curve: curve ?? Curves.ease)
          .moveY(
              duration: duration.milliSeconds,
              begin: verticalOffset,
              end: 0,
              curve: curve ?? Curves.ease);

  /// Applies a fade-in, slide-up, and quick secondary *reversal* bounce.
  ///
  /// The widget moves up, overshoots slightly, and settles, giving a quick bounce effect.
  Widget fadeInMoveInBottomBouncy(
          {int delay = 0,
          double verticalOffset = 50,
          int duration = 500,
          bool repeat = false,
          bool reverse = false,
          bool autoPlay = true,
          void Function(AnimationController)? onInit}) =>
      animate(
              delay: delay.milliSeconds,
              autoPlay: autoPlay,
              onInit: onInit,
              onPlay: (controller) {
                if (repeat) {
                  controller.repeat(reverse: reverse);
                }
              })
          .fadeIn(duration: duration.milliSeconds, begin: 0, curve: Curves.ease)
          .moveY(
              duration: duration.milliSeconds,
              begin: verticalOffset,
              end: 0,
              curve: Curves.ease)
          .then()
          .moveY(
              duration: duration.milliSeconds, begin: -30, curve: Curves.ease);

  /// Applies a fade-in, slide-up, and strong, "sticky" bounce using [Curves.elasticOut].
  ///
  /// This effect uses the elastic curve to create a memorable, stylized bounce
  /// where the widget settles into place with strong oscillation.
  Widget fadeInMoveInBottomStickyBouncy(
          {int delay = 0,
          double verticalOffset = 50,
          int duration = 500,
          bool repeat = false,
          bool reverse = false,
          bool autoPlay = true,
          void Function(AnimationController)? onInit}) =>
      animate(
              delay: delay.milliSeconds,
              autoPlay: autoPlay,
              onInit: onInit,
              onPlay: (controller) {
                if (repeat) {
                  controller.repeat(reverse: reverse);
                }
              })
          .fadeIn(duration: duration.milliSeconds, begin: 0, curve: Curves.ease)
          .moveY(
              duration: duration.milliSeconds,
              begin: verticalOffset,
              end: 0,
              curve: Curves.ease)
          .then()
          .moveY(
              duration: duration.milliSeconds,
              begin: verticalOffset,
              end: 0,
              curve: Curves.elasticOut);

  /// Applies a combined fade-in and slide-down entrance animation from the top.
  ///
  /// @param verticalOffset The distance (in pixels) the widget moves down from (default: 50).
  /// @returns The widget wrapped with the combined animation effect.
  Widget fadeInMoveInTop(
          {int delay = 0,
          double verticalOffset = 50,
          int duration = 500,
          bool repeat = false,
          bool reverse = false,
          bool autoPlay = true,
          Curve? curve,
          void Function(AnimationController)? onInit}) =>
      animate(
              delay: delay.milliSeconds,
              autoPlay: autoPlay,
              onInit: onInit,
              onPlay: (controller) {
                if (repeat) {
                  controller.repeat(reverse: reverse);
                }
              })
          .fadeIn(
              duration: duration.milliSeconds,
              begin: 0,
              curve: curve ?? Curves.ease)
          .moveY(
              duration: duration.milliSeconds,
              begin: -verticalOffset,
              end: 0,
              curve: curve ?? Curves.ease);

  /// Applies a fade-in, slide-down, and quick secondary *reversal* bounce from the top.
  Widget fadeInMoveInTopBouncy(
          {int delay = 0,
          double verticalOffset = 50,
          int duration = 500,
          bool repeat = false,
          bool reverse = false,
          bool autoPlay = true,
          void Function(AnimationController)? onInit}) =>
      animate(
              delay: delay.milliSeconds,
              autoPlay: autoPlay,
              onInit: onInit,
              onPlay: (controller) {
                if (repeat) {
                  controller.repeat(reverse: reverse);
                }
              })
          .fadeIn(duration: duration.milliSeconds, begin: 0, curve: Curves.ease)
          .moveY(
              duration: duration.milliSeconds,
              begin: -verticalOffset,
              end: 0,
              curve: Curves.ease)
          .then()
          .moveY(
              duration: duration.milliSeconds, begin: 30, curve: Curves.ease);

  /// Applies a fade-in, slide-down, and strong, "sticky" bounce from the top using [Curves.elasticOut].
  Widget fadeInMoveInTopStickyBouncy(
          {int delay = 0,
          double verticalOffset = 50,
          int duration = 500,
          bool repeat = false,
          bool reverse = false,
          bool autoPlay = true,
          void Function(AnimationController)? onInit}) =>
      animate(
              delay: delay.milliSeconds,
              autoPlay: autoPlay,
              onInit: onInit,
              onPlay: (controller) {
                if (repeat) {
                  controller.repeat(reverse: reverse);
                }
              })
          .fadeIn(duration: duration.milliSeconds, begin: 0, curve: Curves.ease)
          .moveY(
              duration: duration.milliSeconds,
              begin: -verticalOffset,
              end: 0,
              curve: Curves.ease)
          .then()
          .moveY(
              duration: duration.milliSeconds,
              begin: -verticalOffset,
              end: 0,
              curve: Curves.elasticOut);

// --- HORIZONTAL ENTRANCE ANIMATIONS (MOVE X) ---

  /// Applies a combined fade-in and slide-in entrance animation from the left.
  ///
  /// @param horizontalOffset The distance (in pixels) the widget moves right from (default: 50).
  /// @returns The widget wrapped with the combined animation effect.
  Widget fadeInMoveInLeft(
          {int delay = 0,
          double horizontalOffset = 50,
          int duration = 500,
          bool repeat = false,
          bool reverse = false,
          bool autoPlay = true,
          Curve? curve,
          void Function(AnimationController)? onInit}) =>
      animate(
              delay: delay.milliSeconds,
              autoPlay: autoPlay,
              onInit: onInit,
              onPlay: (controller) {
                if (repeat) {
                  controller.repeat(reverse: reverse);
                }
              })
          .fadeIn(
              duration: duration.milliSeconds,
              begin: 0,
              curve: curve ?? Curves.ease)
          .moveX(
              duration: duration.milliSeconds,
              begin: -horizontalOffset,
              end: 0,
              curve: curve ?? Curves.ease);

  /// Applies a fade-in, slide-right, and quick secondary *reversal* bounce from the left.
  Widget fadeInMoveInLeftBouncy(
          {int delay = 0,
          double horizontalOffset = 50,
          int duration = 500,
          bool repeat = false,
          bool reverse = false,
          bool autoPlay = true,
          void Function(AnimationController)? onInit}) =>
      animate(
              delay: delay.milliSeconds,
              autoPlay: autoPlay,
              onInit: onInit,
              onPlay: (controller) {
                if (repeat) {
                  controller.repeat(reverse: reverse);
                }
              })
          .fadeIn(duration: duration.milliSeconds, begin: 0, curve: Curves.ease)
          .moveX(
              duration: duration.milliSeconds,
              begin: -horizontalOffset,
              end: 0,
              curve: Curves.ease)
          .then()
          .moveX(
              duration: duration.milliSeconds, begin: 30, curve: Curves.ease);

  /// Applies a fade-in, slide-right, and strong, "sticky" bounce from the left using [Curves.elasticOut].
  Widget fadeInMoveInLeftStickyBouncy(
          {int delay = 0,
          double horizontalOffset = 50,
          int duration = 500,
          bool repeat = false,
          bool reverse = false,
          bool autoPlay = true,
          void Function(AnimationController)? onInit}) =>
      animate(
              delay: delay.milliSeconds,
              autoPlay: autoPlay,
              onInit: onInit,
              onPlay: (controller) {
                if (repeat) {
                  controller.repeat(reverse: reverse);
                }
              })
          .fadeIn(duration: duration.milliSeconds, begin: 0, curve: Curves.ease)
          .moveX(
              duration: duration.milliSeconds,
              begin: -horizontalOffset,
              end: 0,
              curve: Curves.ease)
          .then()
          .moveX(
              duration: duration.milliSeconds,
              begin: -horizontalOffset,
              end: 0,
              curve: Curves.elasticOut);

  /// Applies a combined fade-in and slide-in entrance animation from the right.
  ///
  /// @param horizontalOffset The distance (in pixels) the widget moves left from (default: 50).
  /// @returns The widget wrapped with the combined animation effect.
  Widget fadeInMoveInRight(
          {int delay = 0,
          double horizontalOffset = 50,
          int duration = 500,
          bool repeat = false,
          bool reverse = false,
          bool autoPlay = true,
          Curve? curve,
          void Function(AnimationController)? onInit}) =>
      animate(
              delay: delay.milliSeconds,
              autoPlay: autoPlay,
              onInit: onInit,
              onPlay: (controller) {
                if (repeat) {
                  controller.repeat(reverse: reverse);
                }
              })
          .fadeIn(
              duration: duration.milliSeconds,
              begin: 0,
              curve: curve ?? Curves.ease)
          .moveX(
              duration: duration.milliSeconds,
              begin: horizontalOffset,
              end: 0,
              curve: curve ?? Curves.ease);

  /// Applies a fade-in, slide-left, and quick secondary *reversal* bounce from the right.
  Widget fadeInMoveInRightBouncy(
          {int delay = 0,
          double horizontalOffset = 50,
          int duration = 500,
          bool repeat = false,
          bool reverse = false,
          bool autoPlay = true,
          Curve? curve,
          void Function(AnimationController)? onInit}) =>
      animate(
              delay: delay.milliSeconds,
              autoPlay: autoPlay,
              onInit: onInit,
              onPlay: (controller) {
                if (repeat) {
                  controller.repeat(reverse: reverse);
                }
              })
          .fadeIn(
              duration: duration.milliSeconds,
              begin: 0,
              curve: curve ?? Curves.ease)
          .moveX(
              duration: duration.milliSeconds,
              begin: horizontalOffset,
              end: 0,
              curve: curve ?? Curves.ease)
          .then()
          .moveX(
              duration: duration.milliSeconds, begin: -30, curve: Curves.ease);

  /// Applies a fade-in, slide-left, and strong, "sticky" bounce from the right using [Curves.elasticOut].
  Widget fadeInMoveInRightStickyBouncy(
          {int delay = 0,
          double horizontalOffset = 50,
          int duration = 500,
          bool repeat = false,
          bool reverse = false,
          bool autoPlay = true,
          Curve? curve,
          void Function(AnimationController)? onInit}) =>
      animate(
              delay: delay.milliSeconds,
              autoPlay: autoPlay,
              onInit: onInit,
              onPlay: (controller) {
                if (repeat) {
                  controller.repeat(reverse: reverse);
                }
              })
          .fadeIn(
              duration: duration.milliSeconds,
              begin: 0,
              curve: curve ?? Curves.ease)
          .moveX(
              duration: duration.milliSeconds,
              begin: horizontalOffset,
              end: 0,
              curve: curve ?? Curves.ease)
          .then()
          .moveX(
              duration: duration.milliSeconds,
              begin: horizontalOffset,
              end: 0,
              curve: Curves.elasticOut);
}
