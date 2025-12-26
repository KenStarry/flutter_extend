import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

extension ScaffoldExtensions on Scaffold {
  /// Wraps the [Scaffold] in an [AnnotatedRegion] to customize the appearance of
  /// the system status bar and navigation bar overlays.
  ///
  /// This is essential for controlling the color and icon brightness of the system
  /// UI elements (like the clock, battery icons, and bottom navigation buttons)
  /// to ensure they match the [Scaffold]'s design (e.g., light icons on a dark AppBar).
  ///
  /// @param statusBarColor The background color of the status bar overlay.
  /// @param statusBarBrightness Controls the brightness of status bar icons (e.g., [Brightness.dark] for light icons).
  /// @param navigationBarColor The background color of the system navigation bar (bottom bar on Android).
  /// @param navigationBarBrightness Controls the brightness of the navigation bar icons (e.g., [Brightness.dark] for light icons).
  /// @returns The current [Scaffold] wrapped inside an [AnnotatedRegion] widget.
  ///
  /// Example (Matching a Dark AppBar):
  /// ```dart
  /// final myScaffold = Scaffold(
  ///   appBar: AppBar(
  ///     backgroundColor: Colors.black, // Dark color
  ///     title: const Text('Settings'),
  ///   ),
  ///   body: const Center(),
  /// );
  ///
  /// // Ensures status bar icons (clock, battery) are white/light:
  /// return myScaffold.addAnnotatedRegion(
  ///   statusBarBrightness: Brightness.light, // Controls icon/text color
  ///   statusBarColor: Colors.black,          // Status bar background color
  /// );
  /// ```
  Widget addAnnotatedRegion(
      {Color? statusBarColor,
      Brightness? statusBarBrightness,
      Color? navigationBarColor,
      Brightness? navigationBarBrightness}) {
    return AnnotatedRegion(
        value: SystemUiOverlayStyle(
            statusBarColor: statusBarColor,
            statusBarBrightness: statusBarBrightness,
            systemNavigationBarColor: navigationBarColor,
            systemNavigationBarIconBrightness: navigationBarBrightness),
        child: this);
  }
}
