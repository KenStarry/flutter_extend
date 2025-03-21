part of '../flutter_extend.dart';

extension ShakeAnimationExtensions on Widget {
  /// Shake Animation
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
