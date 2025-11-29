part of '../flutter_extend.dart';

extension PlatformContextExtensions on BuildContext {
  /// Checks if the application is running on an iOS device.
  ///
  /// **Note:** This relies on [dart:io] and will throw an error if used in a web environment.
  ///
  /// Example:
  /// ```dart
  /// if (context.isIOS) {
  ///   // Use Cupertino widgets
  /// }
  /// ```
  bool get isIOS => Platform.isIOS;

  /// Checks if the application is running on an Android device.
  ///
  /// **Note:** This relies on [dart:io].
  bool get isAndroid => Platform.isAndroid;

  /// Checks if the application is running on a Windows desktop environment.
  bool get isWindows => Platform.isWindows;

  /// Checks if the application is running on a macOS desktop environment.
  bool get isMacOS => Platform.isMacOS;

  /// Checks if the application is running on a Linux desktop environment.
  bool get isLinux => Platform.isLinux;

  /// Checks if the application is running on the experimental Fuchsia OS.
  bool get isFuchsia => Platform.isFuchsia;

  /// Checks if the application is running on a mobile operating system (Android or iOS).
  ///
  /// @returns True if [isAndroid] or [isIOS] is true.
  ///
  /// Example:
  /// ```dart
  /// final iconSize = context.isMobile ? 24.0 : 32.0;
  /// ```
  bool get isMobile => isAndroid || isIOS;

  /// Checks if the application is running on a desktop operating system (Windows, Linux, or macOS).
  ///
  /// @returns True if [isWindows], [isLinux], or [isMacOS] is true.
  ///
  /// Example:
  /// ```dart
  /// if (context.isDesktop) {
  ///   // Use a wider, more complex sidebar layout
  /// }
  /// ```
  bool get isDesktop => isWindows || isLinux || isMacOS;
}
