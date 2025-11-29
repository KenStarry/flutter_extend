part of '../flutter_extend.dart';

extension AnimationExtensions on Widget {
  /// Applies a simple, continuous pulsing (scale) animation to the widget.
  ///
  /// This effect uses the `.scaleXY()` chained animation to smoothly grow and shrink
  /// the widget, commonly used for drawing attention to an element (like a button or icon).
  ///
  /// **NOTE:** This extension assumes the presence of a third-party animation package
  /// (e.g., `flutter_animate`) that provides the base `animate()` method.
  ///
  /// @param delay The delay before the animation starts (in milliseconds).
  /// @param duration The duration of a single pulse cycle (in milliseconds).
  /// @param scaleFactor The maximum scale factor the widget will reach (default: 1.2).
  /// @param repeat If true (default), the animation loops indefinitely.
  /// @param reverse If true (default), the animation cycles back and forth (scale up, then scale down).
  /// @param autoPlay If true (default), the animation starts automatically.
  /// @param onInit A callback fired when the [AnimationController] is initialized.
  /// @returns The widget wrapped with the continuous pulse animation effect.
  ///
  /// Example (Slow, subtle pulse):
  /// ```dart
  /// Icon(Icons.favorite, size: 50)
  ///   .pulseSimple(duration: 1500, scaleFactor: 1.05)
  /// ```
  Widget pulseSimple(
          {int delay = 0,
          int duration = 500,
          double scaleFactor = 1.2,
          bool repeat = true,
          bool reverse = true,
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
          .scaleXY(
              begin: 1.0,
              end: scaleFactor,
              duration: duration.milliSeconds,
              curve: Curves.easeInOut);

  /// Applies a distinct, two-stage bouncing scale animation (scale down -> scale up -> settle).
  ///
  /// This effect gives the feeling of a "click" or an item "landing" on the screen.
  /// It scales down slightly, scales up past the target, then settles back to normal size.
  ///
  /// **NOTE:** This extension assumes the presence of a third-party animation package
  /// (e.g., `flutter_animate`) that provides the base `animate()` and chainable methods.
  ///
  /// @param delay The delay before the animation starts (in milliseconds).
  /// @param duration The duration of the initial scale-up phase (in milliseconds).
  /// @param repeat If true, the entire two-stage animation sequence loops indefinitely (default: true).
  /// @param onInit A callback fired when the [AnimationController] is initialized.
  /// @returns The widget wrapped with the bouncing animation effect.
  ///
  /// Example (Bouncing Entrance):
  /// ```dart
  /// Text('Success!').pulseAlt(repeat: false, duration: 800)
  /// ```
  Widget pulseAlt(
          {int delay = 0,
          int duration = 500,
          bool repeat = true,
          void Function(AnimationController)? onInit}) =>
      animate(
              delay: delay.milliSeconds,
              autoPlay: true,
              onInit: onInit,
              onPlay: (controller) {
                if (repeat) {
                  controller.repeat(reverse: true);
                }
              })
          .scaleXY(begin: 0.8, end: 1.1, duration: duration.milliSeconds)
          .then()
          .scaleXY(
              begin: 1.1, end: 1.0, duration: (duration ~/ 2).milliSeconds);
}
