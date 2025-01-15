part of '../flutter_extend.dart';

extension ContextExtensions on BuildContext {
  /// Get Screen Width
  double get xGetScreenWidth => MediaQuery.sizeOf(this).width;

  /// Get Screen Height
  double get xGetScreenHeight => MediaQuery.sizeOf(this).height;

  /// Get Theme Data
  ThemeData get xTheme => Theme.of(this);

  /// Get Color Scheme
  ColorScheme get xColorScheme => Theme.of(this).colorScheme;
}
