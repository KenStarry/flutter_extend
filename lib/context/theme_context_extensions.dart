part of '../flutter_extend.dart';

extension ThemeContextExtensions on BuildContext {
  /// Get Theme Data
  ThemeData get theme => Theme.of(this);

  /// Get Text Theme
  TextTheme get textTheme => Theme.of(this).textTheme;

  /// Get Color Scheme
  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  /// Get Icon Theme Data
  IconThemeData get iconTheme => Theme.of(this).iconTheme;
}
