part of '../flutter_extend.dart';

extension GlobalColorExtensions on Color {
  /// Generate Random color
  // Color generateRandomColor() {
  //   final rand = Random();
  //
  //   Color randomColor = Color.fromRGBO(
  //       rand.nextInt(255), rand.nextInt(255), rand.nextInt(255), 1);
  //
  //   return randomColor;
  // }

  /// Lighten Color by percent (100 -> white)
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

  /// Color to Hex
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
}
