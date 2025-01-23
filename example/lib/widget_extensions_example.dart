import 'package:flutter/material.dart';
import 'package:flutter_extend/flutter_extend.dart';

class WidgetExtensionsExample extends StatelessWidget {
  const WidgetExtensionsExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          /// Add Padding to text
          Text("Hello there my friend".removeAllWhiteSpaces).padding(
              padding: EdgeInsets.symmetric(horizontal: 32)),
          
          /// Generate Lorem Ipsum
          Text(''.loremIpsum(wordCount: 30)),

          /// Generate Random UUID
          Text(''),
        ],
      ),
    );
  }
}
