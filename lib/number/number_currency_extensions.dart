part of '../flutter_extend.dart';

extension NumberCurrencyExtensions on num {
  /// Abbreviates the Given Number to a format eg 1.1B, 2.0K etc
  String toAbbreviated({int decimalCount = 1}) {
    if (this >= 1e9) return '${(this / 1e9).toStringAsFixed(decimalCount)}B';
    if (this >= 1e6) return '${(this / 1e6).toStringAsFixed(decimalCount)}M';
    if (this >= 1e3) return '${(this / 1e3).toStringAsFixed(decimalCount)}K';

    return toString();
  }
}
