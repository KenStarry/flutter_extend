part of '../flutter_extend.dart';

extension MediaQueryContextExtensions on BuildContext {
  /// Get Screen Size
  Size get screenSize => MediaQuery.sizeOf(this);

  /// Get Screen Width
  double get screenWidth => MediaQuery.sizeOf(this).width;

  /// Get Screen Height
  double get screenHeight => MediaQuery.sizeOf(this).height;

  /// Get Safe Padding from Media Query
  EdgeInsets get safePadding => MediaQuery.of(this).padding;

  /// Get Screen Orientation
  Orientation get orientation => MediaQuery.of(this).orientation;

  /// Check Platform Brightness
  Brightness get brightness => MediaQuery.platformBrightnessOf(this);

  /// Check Dark Mode
  bool get isDarkMode =>
      MediaQuery.of(this).platformBrightness == Brightness.dark;

  /// Check Whether keyboard is visible on screen
  bool get isKeyboardVisible => MediaQuery.of(this).viewInsets.bottom > 0;

  /// Detect Whether the device is in Landscape mode
  bool get isLandscape =>
      MediaQuery.of(this).orientation == Orientation.landscape;

  /// Detect Whether the device is in Portrait mode
  bool get isPortrait =>
      MediaQuery.of(this).orientation == Orientation.portrait;
}
