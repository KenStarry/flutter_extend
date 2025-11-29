part of '../flutter_extend.dart';

extension GlobalColorExtensions on Color {
  /// Computes the relative luminance of this [Color] using the sRGB color space.
  ///
  /// This value is used to determine if a color is perceived as light or dark
  /// for calculating accessible text contrast.
  ///
  /// **Note:** This is computationally expensive to calculate and should be
  /// cached if accessed frequently.
  ///
  /// @returns A double between 0.0 (black) and 1.0 (white).
  double get luminance => computeLuminance();

  /// Checks if the [Color] is perceived as dark (luminance is below 0.5).
  ///
  /// Useful for determining if white text should be used over the background.
  ///
  /// Example:
  /// ```dart
  /// final needsWhiteText = Colors.black.isDark; // true
  /// ```
  /// @returns True if the color's luminance is less than 0.5.
  bool get isDark => luminance < 0.5;

  /// Checks if the [Color] is perceived as light (luminance is 0.5 or above).
  ///
  /// Useful for determining if dark text should be used over the background.
  ///
  /// Example:
  /// ```dart
  /// final needsDarkText = Colors.yellow.isLight; // true
  /// ```
  /// @returns True if the color's luminance is 0.5 or greater.
  bool get isLight => luminance >= 0.5;

  /// Lightens the color by a specified [factor].
  ///
  /// The operation moves the color towards white (RGB 255, 255, 255).
  /// The alpha channel remains unchanged.
  ///
  /// @param factor A double between 0.0 (no change) and 1.0 (pure white).
  /// @returns A new [Color] object representing the lighter shade.
  ///
  /// Example:
  /// ```dart
  /// final lighterBlue = Colors.blue.getLighterShade(0.2); // 20% lighter
  /// final pureWhite = Colors.blue.getLighterShade(1.0); // pure white
  /// ```
  Color getLighterShade(double factor) {
    assert(factor >= 0 && factor <= 1, 'Factor must be between 0 and 1');

    // Extract the red, green, and blue components of the color
    int red = (r * 255).toInt();
    int green = (g * 255).toInt();
    int blue = (b * 255).toInt();

    // Calculate the new lighter color components
    int newRed = red + ((255 - red) * factor).round();
    int newGreen = green + ((255 - green) * factor).round();
    int newBlue = blue + ((255 - blue) * factor).round();

    // Ensure the values are within the valid range (0-255)
    newRed = newRed.clamp(0, 255);
    newGreen = newGreen.clamp(0, 255);
    newBlue = newBlue.clamp(0, 255);

    // Return the new lighter color
    return Color.fromARGB((a * 255).toInt(), newRed, newGreen, newBlue);
  }

  /// Converts the color to a hexadecimal string representation.
  ///
  /// @param hashSign If true (default), prepends a '#' sign (e.g., #FF00FF).
  /// @param withAlpha If true, includes the alpha channel in the string (e.g., #FF00FF00).
  /// @returns The hexadecimal string representation of the color.
  ///
  /// Example:
  /// ```dart
  /// Colors.blue.toHex();                      // Returns "#2196F3" (omitting alpha)
  /// Colors.red.withAlpha(128).toHex(withAlpha: true); // Returns "#80F44336"
  /// Colors.black.toHex(hashSign: false);      // Returns "000000" (no hash)
  /// ```
  String toHex({bool hashSign = true, bool withAlpha = false}) {
    final alpha = (a * 255).toInt().toRadixString(16).padLeft(2, '0');
    final red = (r * 255).toInt().toRadixString(16).padLeft(2, '0');
    final green = (g * 255).toInt().toRadixString(16).padLeft(2, '0');
    final blue = (b * 255).toInt().toRadixString(16).padLeft(2, '0');

    return '${hashSign ? '#' : ''}'
            '${withAlpha ? alpha : ''}'
            '$red$green$blue'
        .toUpperCase();
  }

  /// Generates a full 10-shade MaterialColor swatch (50-900) from a single base color.
  ///
  /// This is essential for defining [ThemeData.primarySwatch] as Flutter requires
  /// a [MaterialColor] for this property, not just a [Color].
  /// The base color is used to mathematically derive all lighter and darker shades.
  ///
  /// @returns A new [MaterialColor] object.
  ///
  /// Example:
  /// ```dart
  /// final customColor = Color(0xFF1ABC9C);
  /// final customSwatch = customColor.toMaterialColor;
  ///
  /// ThemeData(primarySwatch: customSwatch)
  /// ```
  MaterialColor get toMaterialColor {
    List<double> strengths = <double>[.05];
    Map<int, Color> swatch = <int, Color>{};
    final int red = (r * 255.0).round().clamp(0, 255),
        green = (g * 255.0).round().clamp(0, 255),
        blue = (b * 255.0).round().clamp(0, 255);

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }

    for (var strength in strengths) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        red + ((ds < 0 ? red : (255 - red)) * ds).round(),
        green + ((ds < 0 ? green : (255 - green)) * ds).round(),
        blue + ((ds < 0 ? blue : (255 - blue)) * ds).round(),
        1,
      );
    }
    return MaterialColor(toARGB32(), swatch);
  }
}
