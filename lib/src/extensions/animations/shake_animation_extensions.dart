import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_extend/src/extensions/number/number_duration_extensions.dart';

extension ShakeAnimationExtensions on Widget {
  /// Applies a horizontal shaking animation to the widget, typically used to indicate an error or draw attention.
  ///
  /// This effect uses the `.shake()` method provided by an external animation package.
  ///
  /// **NOTE:** This relies on the [animate] method provided by an external
  /// animation package (e.g., `flutter_animate`).
  ///
  /// @param delay The duration to wait before starting the animation (in milliseconds).
  /// @param duration The length of the entire shake sequence (in milliseconds).
  /// @param repeat If true, the animation loops indefinitely.
  /// @param reverse If true, reverses direction when repeating.
  /// @param autoPlay If true, the animation starts automatically (default: true).
  /// @param onInit A callback fired when the [AnimationController] is initialized.
  /// @returns The widget wrapped with the shaking animation effect.
  ///
  /// Example (Error Indication):
  /// ```dart
  /// // Shakes the form field for 300ms to signal an invalid input.
  /// TextFormField(initialValue: 'Wrong!').shake(duration: 300, repeat: false)
  /// ```
  Widget shake(
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
          }).shake(duration: duration.milliSeconds, hz: 5);
}
