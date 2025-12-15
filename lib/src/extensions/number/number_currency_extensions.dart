import '../../core/enum/currency_direction.dart';

extension NumberCurrencyExtensions on num {
  /// Converts the number to a given currency format with customizable separators and symbol placement.
  ///
  /// This method correctly handles thousand separators for the whole number part
  /// and applies rounding based on [decimalPlaces].
  ///
  /// @param decimalPlaces The number of digits to display after the decimal point (default: 2).
  /// @param currencySymbol The symbol to use (e.g., 'KES', '$'). If null, no symbol is used (default: 'KES').
  /// @param currencyDirection Placement of the currency symbol (left or right, default: left).
  /// @param thousandsSeparator The character used to separate thousands (default: ',').
  /// @param decimalSeparator The character used to separate the whole number from the decimals (default: '.').
  /// @returns A formatted string representing the currency value.
  ///
  /// Example (Standard KES):
  /// ```dart
  /// final amount = 12345.678;
  /// print(amount.toCurrency());
  /// // KES 12,345.68
  /// ```
  ///
  /// Example (Euro format):
  /// ```dart
  /// final euroAmount = 9876.5;
  /// print(euroAmount.toCurrency(
  ///   currencySymbol: '€',
  ///   thousandsSeparator: '.',
  ///   decimalSeparator: ',',
  ///   currencyDirection: CurrencyDirection.right,
  /// ));
  /// // 9.876,50 €
  /// ```
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

  /// Abbreviates the number to a concise format (e.g., 1.1B, 2.0K).
  ///
  /// This is used to display large numbers cleanly in UIs (e.g., social media counts, stock prices).
  /// Supports positive and negative values.
  ///
  /// @param decimalCount The number of decimal places to include (default: 1).
  /// @param isLowercase If true, uses lowercase suffixes (b, m, k) (default: false).
  /// @param currencySymbol An optional symbol to prefix/suffix the result.
  /// @param currencyDirection Placement of the currency symbol (left or right, default: left).
  /// @returns An abbreviated string representation (e.g., "1.2M").
  ///
  /// Example:
  /// ```dart
  /// print(12345678.toAbbreviated());                       // 12.3M
  /// print((-5000).toAbbreviated(isLowercase: true));      // -5.0k
  /// print(1000000000.toAbbreviated(currencySymbol: 'USD')); // USD 1.0B
  /// ```
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
