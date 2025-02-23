import 'package:example/animation_extension_examples.dart';
import 'package:example/widget_extensions_example.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimationExtensionExamples(),
    );
  }
}
