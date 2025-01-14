part of '../flutter_extend.dart';

extension GlobalColorExtensions on Color {
  /// Color to Int
  int get szColorToInt {
    final alpha = (a * 255).toInt();
    final red = (r * 255).toInt();
    final green = (g * 255).toInt();
    final blue = (b * 255).toInt();

    return (alpha << 24) | (red << 16) | (green << 8) | blue;
  }

  /// Generate Material color
  MaterialColor szGenerateMaterialColors(Color color) =>
      MaterialColor(color.szColorToInt, {
        50: szTintColor(color, 0.9),
        100: szTintColor(color, 0.8),
        200: szTintColor(color, 0.6),
        300: szTintColor(color, 0.4),
        400: szTintColor(color, 0.2),
        500: color,
        600: szShadeColor(color, 0.1),
        700: szShadeColor(color, 0.2),
        800: szShadeColor(color, 0.3),
        900: szShadeColor(color, 0.4)
      });

  /// Tint Generator
  int szTintValue(int value, double factor) =>
      max(0, min((value + ((255 - value) * factor)).round(), 255));

  Color szTintColor(Color color, double factor) => Color.fromRGBO(
      szTintValue(r.toInt(), factor),
      szTintValue(g.toInt(), factor),
      szTintValue(b.toInt(), factor),
      1);

  /// Shade Generator
  int szShadeValue(int value, double factor) =>
      max(0, min(value - (value * factor).round(), 255));

  Color szShadeColor(Color color, double factor) => Color.fromRGBO(
      szShadeValue(r.toInt(), factor),
      szShadeValue(g.toInt(), factor),
      szShadeValue(b.toInt(), factor),
      1);

  /// Generate Random color
  Color get szGenerateRandomColor {
    final rand = Random();

    Color randomColor = Color.fromRGBO(
        rand.nextInt(255), rand.nextInt(255), rand.nextInt(255), 1);

    return randomColor;
  }

  /// Darken color by percent (100 -> black)
  Color szDarkenColor([int percent = 10]) {
    assert(1 <= percent && percent <= 100);

    var f = 1 - percent / 100;
    return Color.fromARGB(
        a.toInt(), (r * f).round(), (g * f).round(), (b * f).round());
  }

  /// Lighten Color by percent (100 -> white)
  Color szLightenColor([int percent = 10]) {
    assert(1 <= percent && percent <= 100);

    var p = percent / 100;

    return Color.fromARGB(
        a.toInt(),
        r.toInt() + ((255 - r.toInt()) * p).round(),
        g.toInt() + ((255 - g.toInt()) * p).round(),
        b.toInt() + ((255 - b.toInt()) * p).round());
  }

  /// Color to Hex
  String get szColorToHexString => '#${szColorToInt.toRadixString(16)}';
}
