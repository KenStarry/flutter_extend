part of '../flutter_extend.dart';

extension FadeAnimationExtensions on Widget {
  /// Fade In Animation
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
              delay: delay.milliSecs,
              autoPlay: autoPlay,
              onInit: onInit,
              onPlay: (controller) {
                if (repeat) {
                  controller.repeat(reverse: reverse);
                }
              })
          .fadeIn(
              duration: duration.milliSecs, begin: begin, curve: Curves.easeIn);

  /// Fade Out Animation
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
              delay: delay.milliSecs,
              autoPlay: autoPlay,
              onInit: onInit,
              onPlay: (controller) {
                if (repeat) {
                  controller.repeat(reverse: reverse);
                }
              })
          .fadeOut(
              duration: duration.milliSecs, begin: begin, curve: Curves.easeIn);
}
