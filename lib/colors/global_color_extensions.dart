part of '../flutter_extend.dart';

extension GlobalColorExtensions on Color {
  /// Color to Int
  int colorToInt() {
    final alpha = (a * 255).toInt();
    final red = (r * 255).toInt();
    final green = (g * 255).toInt();
    final blue = (b * 255).toInt();

    return (alpha << 24) | (red << 16) | (green << 8) | blue;
  }

  /// Generate Material color
  MaterialColor generateMaterialColors(Color color) =>
      MaterialColor(color.colorToInt(), {
        50: tintColor(color, 0.9),
        100: tintColor(color, 0.8),
        200: tintColor(color, 0.6),
        300: tintColor(color, 0.4),
        400: tintColor(color, 0.2),
        500: color,
        600: shadeColor(color, 0.1),
        700: shadeColor(color, 0.2),
        800: shadeColor(color, 0.3),
        900: shadeColor(color, 0.4)
      });

  /// Tint Generator
  int tintValue(int value, double factor) =>
      max(0, min((value + ((255 - value) * factor)).round(), 255));

  Color tintColor(Color color, double factor) => Color.fromRGBO(
      tintValue(r.toInt(), factor),
      tintValue(g.toInt(), factor),
      tintValue(b.toInt(), factor),
      1);

  /// Shade Generator
  int shadeValue(int value, double factor) =>
      max(0, min(value - (value * factor).round(), 255));

  Color shadeColor(Color color, double factor) => Color.fromRGBO(
      shadeValue(r.toInt(), factor),
      shadeValue(g.toInt(), factor),
      shadeValue(b.toInt(), factor),
      1);

  /// Generate Random color
  Color generateRandomColor() {
    final rand = Random();

    Color randomColor = Color.fromRGBO(
        rand.nextInt(255), rand.nextInt(255), rand.nextInt(255), 1);

    return randomColor;
  }

  /// Darken color by percent (100 -> black)
  Color darkenColor([int percent = 10]) {
    assert(1 <= percent && percent <= 100);

    var f = 1 - percent / 100;
    return Color.fromARGB(
        a.toInt(), (r * f).round(), (g * f).round(), (b * f).round());
  }

  /// Lighten Color by percent (100 -> white)
  Color lightenColor([int percent = 10]) {
    assert(1 <= percent && percent <= 100);

    var p = percent / 100;

    return Color.fromARGB(
        a.toInt(),
        r.toInt() + ((255 - r.toInt()) * p).round(),
        g.toInt() + ((255 - g.toInt()) * p).round(),
        b.toInt() + ((255 - b.toInt()) * p).round());
  }

  /// Color to Hex
  String colorToHex() => '#${colorToInt().toRadixString(16)}';
}
