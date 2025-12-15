import 'package:flutter/material.dart';

extension ThemeContextExtensions on BuildContext {
  /// Retrieves the entire application [ThemeData].
  ///
  /// This is the primary shortcut for accessing all defined theme properties.
  ///
  /// Example:
  /// ```dart
  /// // Access a custom theme property defined elsewhere:
  /// final background = context.theme.scaffoldBackgroundColor;
  /// ```
  /// @returns The current [ThemeData] object.
  ThemeData get theme => Theme.of(this);

  /// Retrieves the application's primary [TextTheme].
  ///
  /// This provides quick access to standard text styles (headline, title, body, etc.).
  ///
  /// Example:
  /// ```dart
  /// Text(
  ///   'Welcome',
  ///   style: context.textTheme.headlineLarge, // Clean access
  /// )
  /// ```
  /// @returns The current [TextTheme] object.
  TextTheme get textTheme => Theme.of(this).textTheme;

  /// Retrieves the application's primary [ColorScheme].
  ///
  /// This is the recommended way to access semantic colors like primary, secondary,
  /// error, and surface colors, ensuring UI consistency.
  ///
  /// Example:
  /// ```dart
  /// Container(
  ///   color: context.colorScheme.primary,
  /// )
  /// ```
  /// @returns The current [ColorScheme] object.
  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  /// Retrieves the application's primary [IconThemeData].
  ///
  /// This provides consistent default color and size for all icons across the app.
  ///
  /// Example:
  /// ```dart
  /// Icon(
  ///   Icons.star,
  ///   color: context.iconTheme.color, // Accesses the default icon color
  /// )
  /// ```
  /// @returns The current [IconThemeData] object.
  IconThemeData get iconTheme => Theme.of(this).iconTheme;
}
