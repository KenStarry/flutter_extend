import 'package:flutter/material.dart';

class Ball extends StatelessWidget {
  final Color color;

  const Ball({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle
      ),
    );
  }
}
