part of '../flutter_extend.dart';

extension ContextExtensions on BuildContext {
  /// Check Dark Mode
  bool get isDarkMode =>
      MediaQuery.of(this).platformBrightness == Brightness.dark;
}
