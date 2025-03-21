part of '../flutter_extend.dart';

extension AnimationExtensions on Widget {
  /// Pulse Simple Effect Animation
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

  /// Bounce Effect Animation
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
          .scaleXY(begin: 1.1, end: 1.0, duration: (duration ~/ 2).milliSeconds);
}
