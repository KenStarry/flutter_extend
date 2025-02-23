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
              duration: duration.milliSecs,
              begin: begin,
              curve: curve ?? Curves.easeIn);

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
              duration: duration.milliSecs,
              begin: begin,
              curve: curve ?? Curves.easeIn);

  /// Fade In Move In Vertical Animation
  Widget fadeInMoveInBottom(
          {int delay = 0,
          double verticalBegin = 50,
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
              duration: duration.milliSecs,
              begin: 0,
              curve: curve ?? Curves.ease)
          .moveY(
              duration: duration.milliSecs,
              begin: verticalBegin,
              end: 0,
              curve: curve ?? Curves.ease);

  /// Fade In Move In Vertical Animation
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
              delay: delay.milliSecs,
              autoPlay: autoPlay,
              onInit: onInit,
              onPlay: (controller) {
                if (repeat) {
                  controller.repeat(reverse: reverse);
                }
              })
          .fadeIn(
              duration: duration.milliSecs,
              begin: 0,
              curve: curve ?? Curves.ease)
          .moveY(
              duration: duration.milliSecs,
              begin: -verticalOffset,
              end: 0,
              curve: curve ?? Curves.ease);

  /// Fade In Move In Left Animation
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
              delay: delay.milliSecs,
              autoPlay: autoPlay,
              onInit: onInit,
              onPlay: (controller) {
                if (repeat) {
                  controller.repeat(reverse: reverse);
                }
              })
          .fadeIn(
              duration: duration.milliSecs,
              begin: 0,
              curve: curve ?? Curves.ease)
          .moveX(
              duration: duration.milliSecs,
              begin: -horizontalOffset,
              end: 0,
              curve: curve ?? Curves.ease);

  /// Fade In Move In Right Animation
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
              delay: delay.milliSecs,
              autoPlay: autoPlay,
              onInit: onInit,
              onPlay: (controller) {
                if (repeat) {
                  controller.repeat(reverse: reverse);
                }
              })
          .fadeIn(
              duration: duration.milliSecs,
              begin: 0,
              curve: curve ?? Curves.ease)
          .moveX(
              duration: duration.milliSecs,
              begin: horizontalOffset,
              end: 0,
              curve: curve ?? Curves.ease);
}
