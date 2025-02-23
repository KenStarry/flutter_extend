import 'package:flutter/material.dart';
import 'package:flutter_extend/flutter_extend.dart';

class AnimationExtensionExamples extends StatefulWidget {
  const AnimationExtensionExamples({super.key});

  @override
  State<AnimationExtensionExamples> createState() => _AnimationExtensionExamplesState();
}

class _AnimationExtensionExamplesState extends State<AnimationExtensionExamples> {
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
              /// Bounce Animation
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle
                ),
              ).pulseSimple(duration: 1000),
          
              /// Fade Animation
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle
                ),
              ).fadeIn(duration: 1000),
            ],
          ),
        ),
      ),
    );
  }
}
