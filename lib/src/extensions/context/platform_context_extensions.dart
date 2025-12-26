import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_extend/src/extensions/context/media_query_context_extensions.dart';

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
  bool get isMobilePlatform => isAndroid || isIOS;

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
  bool get isDesktopPlatform => isWindows || isLinux || isMacOS;

  /// Checks if the device is a phone (width < 600dp).
  ///
  /// Based on Material Design breakpoints.
  ///
  /// Example:
  /// ```dart
  /// if (context.isPhone) {
  ///   return SingleColumnLayout();
  /// }
  /// ```
  bool get isPhone => screenWidth < 600;

  /// Checks if the device is a small phone (width < 360dp).
  ///
  /// Useful for handling very small screens separately.
  bool get isSmallPhone => screenWidth < 360;

  /// Checks if the device is a tablet (width >= 600dp and < 840dp).
  ///
  /// Based on Material Design breakpoints.
  bool get isTablet => screenWidth >= 600 && screenWidth < 840;

  /// Checks if the device is a desktop/large screen (width >= 840dp).
  ///
  /// Based on Material Design breakpoints.
  bool get isDesktop => screenWidth >= 840;

  /// Returns different values based on device type.
  ///
  /// Example:
  /// ```dart
  /// final padding = context.responsive(
  ///   phone: 16.0,
  ///   tablet: 24.0,
  ///   desktop: 32.0,
  /// );
  /// ```
  T responsive<T>({required T phone, T? smallPhone, T? tablet, T? desktop}) {
    if (isDesktop) return desktop ?? tablet ?? smallPhone ?? phone;
    if (isTablet) return tablet ?? smallPhone ?? phone;
    if (isSmallPhone) return smallPhone ?? phone;

    return phone;
  }

  /// Returns a value scaled based on screen width percentage.
  ///
  /// Example:
  /// ```dart
  /// // 50% of screen width
  /// Container(width: context.widthPercent(50))
  /// ```
  double widthPercent(double percent) => screenWidth * (percent / 100);

  /// Returns a value scaled based on screen height percentage.
  ///
  /// Example:
  /// ```dart
  /// // 30% of screen height
  /// Container(height: context.heightPercent(30))
  /// ```
  double heightPercent(double percent) => screenHeight * (percent / 100);
}
