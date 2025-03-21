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
    final Map<double, List<String>> suffixes = {
      1e9: ['B', 'b'],
      1e6: ['M', 'm'],
      1e3: ['K', 'k']
    };
    // Store the absolute value to ensure correct abbreviation logic for negative numbers.
    var value = this;
    for (final entry in suffixes.entries) {
      // Convert to positive for comparison, but keep the original number's sign.
      if (this < 0) value = -this;
      if (value >= entry.key) {
        final formattedValue = (this / entry.key).toStringAsFixed(decimalCount);
        final suffix = isLowercase ? entry.value[1] : entry.value[0];
        final symbol = currencySymbol != null ? '$currencySymbol ' : '';

        return currencyDirection == CurrencyDirection.left
            ? '$symbol$formattedValue$suffix'.trim()
            : '$formattedValue$suffix ${currencySymbol ?? ''}'.trim();
      }
    }

    return toString();
  }
}
