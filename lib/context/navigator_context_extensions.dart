part of '../flutter_extend.dart';

extension NavigatorContextExtensions on BuildContext {
  /// Simplified Navigation to a new Screen
  void navigateTo(Widget page) {
    Navigator.push(this, MaterialPageRoute(builder: (context) => page));
  }

  /// Simplified Pop Screen
  void popScreen() => Navigator.pop(this);
}
