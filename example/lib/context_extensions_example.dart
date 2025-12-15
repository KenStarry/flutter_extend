import 'package:flutter/material.dart';
import 'package:flutter_extend/flutter_extend.dart';

class ContextExtensionsExample extends StatelessWidget {
  const ContextExtensionsExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          /// Add Style to Text
          Text("Get Text Style", style: context.theme.textTheme.titleLarge),

          /// Add Color to Container using Color Scheme
          Container(
            width: 100,
            height: 100,
            color: context.colorScheme.primary,
          ),

          /// Change color if is Dark Mode
          Container(
            width: 100,
            height: 100,
            color: context.isDarkMode ? Colors.grey : Colors.red,
          ),

          /// Get Current Screen Width
          Text("SCREEN WIDTH : ${context.screenWidth}"),

          /// Get Current Screen Height
          Text("SCREEN HEIGHT : ${context.screenHeight}"),
        ],
      ),
    );
  }
}
