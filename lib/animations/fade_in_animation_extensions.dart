part of '../flutter_extend.dart';

extension FadeInAnimationExtensions on Widget {
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

  /// Fade In Move In Bottom Animation
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

  /// Fade In Move In Bottom Sticky Bouncy Animation
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

  /// Fade In Move In Bottom Sticky Bouncy Animation
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

  /// Fade In Move In Bottom Sticky Bouncy Animation
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

  /// Fade In Move In Bottom Sticky Bouncy Animation
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

  /// Fade In Move In Left Bouncy Animation
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

  /// Fade In Move In Left Bouncy Animation
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

  /// Fade In Move In Right Bouncy Animation
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

  /// Fade In Move In Right Sticky Bouncy Animation
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
