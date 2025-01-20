part of '../flutter_extend.dart';

extension ContextExtensions on BuildContext {
  /// Get Screen Width
  double get screenWidth => MediaQuery.sizeOf(this).width;

  /// Get Screen Height
  double get screenHeight => MediaQuery.sizeOf(this).height;

  /// Get Theme Data
  ThemeData get theme => Theme.of(this);

  /// Get Color Scheme
  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  /// Check Dark Mode
  bool get isDarkMode =>
      MediaQuery.of(this).platformBrightness == Brightness.dark;
}
