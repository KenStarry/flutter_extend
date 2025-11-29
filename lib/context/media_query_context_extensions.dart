part of '../flutter_extend.dart';

extension MediaQueryContextExtensions on BuildContext {
  /// Retrieves the total size of the screen (width and height).
  ///
  /// This getter uses [MediaQuery.sizeOf(this)] which is optimized to only
  /// rebuild when the screen size changes, improving performance.
  ///
  /// Example:
  /// ```dart
  /// final size = context.screenSize; // Returns Size(392.7, 801.5)
  /// ```
  Size get screenSize => MediaQuery.sizeOf(this);

  /// Retrieves the width of the screen in logical pixels.
  ///
  /// Example:
  /// ```dart
  /// final width = context.screenWidth;
  /// final isMobile = width < 600;
  /// ```
  double get screenWidth => MediaQuery.sizeOf(this).width;

  /// Retrieves the height of the screen in logical pixels.
  ///
  /// Example:
  /// ```dart
  /// // Dynamically size a container to half the screen height
  /// Container(height: context.screenHeight * 0.5)
  /// ```
  double get screenHeight => MediaQuery.sizeOf(this).height;

  /// Retrieves the padding necessary to avoid system intrusions (e.g., status bars, notches).
  ///
  /// This is typically only needed when placing content directly behind the status bar
  /// or system navigation bars, or when using custom scrolls.
  ///
  /// Example:
  /// ```dart
  /// // Use safePadding to offset content below the status bar
  /// Padding(
  ///   padding: context.safePadding,
  ///   child: const Text('Hello'),
  /// )
  /// ```
  EdgeInsets get safePadding => MediaQuery.of(this).padding;

  /// Retrieves the current orientation of the device.
  ///
  /// Example:
  /// ```dart
  /// if (context.orientation == Orientation.landscape) {
  ///   // Use a two-column layout
  /// }
  /// ```
  Orientation get orientation => MediaQuery.of(this).orientation;

  /// Retrieves the current platform brightness setting (light or dark mode)
  /// from the operating system.
  ///
  /// This getter uses [MediaQuery.platformBrightnessOf(this)] for efficiency.
  Brightness get brightness => MediaQuery.platformBrightnessOf(this);

  /// Checks if the operating system is currently running in Dark Mode.
  ///
  /// @returns True if [brightness] is [Brightness.dark].
  ///
  /// Example:
  /// ```dart
  /// final color = context.isDarkMode ? Colors.white : Colors.black;
  /// ```
  bool get isDarkMode =>
      MediaQuery.platformBrightnessOf(this) == Brightness.dark;

  /// Checks whether the software keyboard is currently visible on the screen.
  ///
  /// This is determined by checking the bottom inset of the view.
  ///
  /// @returns True if [viewInsets.bottom] is greater than 0.0.
  bool get isKeyboardVisible => MediaQuery.of(this).viewInsets.bottom > 0;

  /// Checks whether the device is currently in landscape orientation.
  ///
  /// @returns True if [orientation] is [Orientation.landscape].
  bool get isLandscape =>
      MediaQuery.of(this).orientation == Orientation.landscape;

  /// Checks whether the device is currently in portrait orientation.
  ///
  /// @returns True if [orientation] is [Orientation.portrait].
  bool get isPortrait =>
      MediaQuery.of(this).orientation == Orientation.portrait;
}
