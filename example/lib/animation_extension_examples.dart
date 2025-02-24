import 'package:example/components/ball.dart';
import 'package:flutter/material.dart';
import 'package:flutter_extend/flutter_extend.dart';

class AnimationExtensionExamples extends StatefulWidget {
  const AnimationExtensionExamples({super.key});

  @override
  State<AnimationExtensionExamples> createState() =>
      _AnimationExtensionExamplesState();
}

class _AnimationExtensionExamplesState
    extends State<AnimationExtensionExamples> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        child: SingleChildScrollView(
          child: Column(
            spacing: 32,
            children: [
              /// Shake Animation
              Squicle(color: Colors.red).shake(duration: 1000, repeat: true),

              /// Fade In Bottom Sticky Bouncy Animation
              Ball(color: Colors.teal)
                  .fadeInMoveInBottomStickyBouncy(duration: 1000, repeat: true),

              /// Fade In Bottom Bouncy Animation
              Ball(color: Colors.blueGrey)
                  .fadeInMoveInBottomBouncy(duration: 500, repeat: true),

              /// Fade In Top Bouncy Animation
              Ball(color: Colors.brown)
                  .fadeInMoveInTopBouncy(duration: 500, repeat: true),

              /// Fade In Top Sticky Bouncy Animation
              Ball(color: Colors.cyan)
                  .fadeInMoveInTopStickyBouncy(duration: 1000, repeat: true),

              /// Fade In Left Bouncy Animation
              Ball(color: Colors.deepOrange)
                  .fadeInMoveInLeftBouncy(duration: 500, repeat: true),

              /// Fade In Left Sticky Bouncy Animation
              Ball(color: Colors.deepPurple)
                  .fadeInMoveInLeftStickyBouncy(duration: 1000, repeat: true),

              /// Fade In Right Bouncy Animation
              Ball(color: Colors.indigo)
                  .fadeInMoveInRightBouncy(duration: 500, repeat: true),

              /// Fade In Right Sticky Bouncy Animation
              Ball(color: Colors.lime)
                  .fadeInMoveInRightStickyBouncy(duration: 1000, repeat: true),

              /// Bounce Animation
              Ball(color: Colors.red).pulseSimple(duration: 1000),

              /// Fade Animation
              Ball(color: Colors.blue)
                  .fadeIn(duration: 1000, repeat: true, reverse: true),

              /// Fade Out Animation
              Ball(color: Colors.green)
                  .fadeOut(duration: 1000, repeat: true, reverse: true),

              /// Fade In Up Animation
              Ball(color: Colors.yellow)
                  .fadeInMoveInBottom(duration: 1000, repeat: true),

              /// Fade In Down Animation
              Ball(color: Colors.purple)
                  .fadeInMoveInTop(duration: 1000, repeat: true),

              /// Fade In Left Animation
              Ball(color: Colors.orange)
                  .fadeInMoveInLeft(duration: 1000, repeat: true),

              /// Fade In Right Animation
              Ball(color: Colors.pink)
                  .fadeInMoveInRight(duration: 1000, repeat: true),
            ],
          ),
        ),
      ),
    );
  }
}
