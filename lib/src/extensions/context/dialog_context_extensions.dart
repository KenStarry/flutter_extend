import 'package:flutter/material.dart';

extension DialogContextExtensions on BuildContext {
  void showSnackbar(Widget content,
          {Duration duration = const Duration(seconds: 3)}) =>
      ScaffoldMessenger.of(this)
          .showSnackBar(SnackBar(content: content, duration: duration));
}
