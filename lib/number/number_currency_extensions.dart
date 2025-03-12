part of '../flutter_extend.dart';

extension NumberCurrencyExtensions on num {
  /// Converts the Number to a Given currency
  String toCurrency(
      {int decimalPlaces = 2,
      String? currencySymbol = 'KES',
      CurrencyDirection currencyDirection = CurrencyDirection.left,
      String thousandsSeparator = ',',
      String decimalSeparator = '.'}) {
    String formattedNumber = toStringAsFixed(decimalPlaces);

    List<String> parts = formattedNumber.split('.');
    String wholeNumber = parts[0];

    wholeNumber = wholeNumber.replaceAllMapped(
        RegExp(r'\B(?=(\d{3})+(?!\d))'), (match) => thousandsSeparator);

    String result = wholeNumber;

    if (decimalPlaces > 0) {
      result = '$result$decimalSeparator${parts[1]}';
    }

    return currencyDirection == CurrencyDirection.left
        ? '${currencySymbol == null ? '' : '$currencySymbol '}$result'
        : '$result${currencySymbol == null ? '' : ' $currencySymbol'}';
  }

  /// Abbreviates the Given Number to a format eg 1.1B, 2.0K etc
  String toAbbreviated({
    int decimalCount = 1,
    bool isLowercase = false,
    String? currencySymbol,
    CurrencyDirection currencyDirection = CurrencyDirection.left,
  }) {
    if (this >= 1e9) {
      return currencyDirection == CurrencyDirection.left
          ? '${currencySymbol == null ? '' : '$currencySymbol '}${(this / 1e9).toStringAsFixed(decimalCount)}${isLowercase ? 'b' : 'B'}'
          : '${(this / 1e9).toStringAsFixed(decimalCount)}${isLowercase ? 'b' : 'B'}${currencySymbol == null ? '' : ' $currencySymbol'}';
    }
    if (this >= 1e6) {
      return currencyDirection == CurrencyDirection.left
          ? '${currencySymbol == null ? '' : '$currencySymbol '}${(this / 1e6).toStringAsFixed(decimalCount)}${isLowercase ? 'm' : 'M'}'
          : '${(this / 1e6).toStringAsFixed(decimalCount)}${isLowercase ? 'm' : 'M'}${currencySymbol == null ? '' : ' $currencySymbol'}';
    }
    if (this >= 1e3) {
      return currencyDirection == CurrencyDirection.left
          ? '${currencySymbol == null ? '' : '$currencySymbol '}${(this / 1e3).toStringAsFixed(decimalCount)}${isLowercase ? 'k' : 'K'}'
          : '${(this / 1e3).toStringAsFixed(decimalCount)}${isLowercase ? 'k' : 'K'}${currencySymbol == null ? '' : ' $currencySymbol'}';
    }

    return toString();
  }
}
