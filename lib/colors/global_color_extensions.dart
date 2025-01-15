part of '../flutter_extend.dart';

extension GlobalColorExtensions on Color {
  /// Color to Int
  int get xColorToInt {
    final alpha = (a * 255).toInt();
    final red = (r * 255).toInt();
    final green = (g * 255).toInt();
    final blue = (b * 255).toInt();

    return (alpha << 24) | (red << 16) | (green << 8) | blue;
  }

  /// Generate Material color
  MaterialColor xGenerateMaterialColors(Color color) =>
      MaterialColor(color.xColorToInt, {
        50: xTintColor(color, 0.9),
        100: xTintColor(color, 0.8),
        200: xTintColor(color, 0.6),
        300: xTintColor(color, 0.4),
        400: xTintColor(color, 0.2),
        500: color,
        600: xShadeColor(color, 0.1),
        700: xShadeColor(color, 0.2),
        800: xShadeColor(color, 0.3),
        900: xShadeColor(color, 0.4)
      });

  /// Tint Generator
  int xTintValue(int value, double factor) =>
      max(0, min((value + ((255 - value) * factor)).round(), 255));

  Color xTintColor(Color color, double factor) => Color.fromRGBO(
      xTintValue(r.toInt(), factor),
      xTintValue(g.toInt(), factor),
      xTintValue(b.toInt(), factor),
      1);

  /// Shade Generator
  int xShadeValue(int value, double factor) =>
      max(0, min(value - (value * factor).round(), 255));

  Color xShadeColor(Color color, double factor) => Color.fromRGBO(
      xShadeValue(r.toInt(), factor),
      xShadeValue(g.toInt(), factor),
      xShadeValue(b.toInt(), factor),
      1);

  /// Generate Random color
  Color get xGenerateRandomColor {
    final rand = Random();

    Color randomColor = Color.fromRGBO(
        rand.nextInt(255), rand.nextInt(255), rand.nextInt(255), 1);

    return randomColor;
  }

  /// Darken color by percent (100 -> black)
  Color xDarkenColor([int percent = 10]) {
    assert(1 <= percent && percent <= 100);

    var f = 1 - percent / 100;
    return Color.fromARGB(
        a.toInt(), (r * f).round(), (g * f).round(), (b * f).round());
  }

  /// Lighten Color by percent (100 -> white)
  Color xLightenColor([int percent = 10]) {
    assert(1 <= percent && percent <= 100);

    var p = percent / 100;

    return Color.fromARGB(
        a.toInt(),
        r.toInt() + ((255 - r.toInt()) * p).round(),
        g.toInt() + ((255 - g.toInt()) * p).round(),
        b.toInt() + ((255 - b.toInt()) * p).round());
  }

  /// Color to Hex
  String get xColorToHex => '#${xColorToInt.toRadixString(16)}';
}
