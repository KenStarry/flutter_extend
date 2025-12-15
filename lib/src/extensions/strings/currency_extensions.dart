import 'package:intl/intl.dart';

extension CurrencyExtensions on String {
  /// Applies thousand separators to a numeric string, formatting it for display.
  ///
  /// This method first attempts to clean the string by removing existing commas,
  /// parses it to a [double], and then uses [NumberFormat] to reintroduce
  /// thousand separators based on the default locale.
  ///
  /// **Dependency:** This relies on the [intl] package for [NumberFormat].
  ///
  /// @returns A string with thousand separators (e.g., "10,000,000"). Returns "0" if the input is non-numeric or empty.
  ///
  /// Example:
  /// ```dart
  /// final amountString = '10000000';
  /// print(amountString.thousandNumberFormat); // "10,000,000"
  ///
  /// final preformatted = '10,000.50';
  /// print(preformatted.thousandNumberFormat); // "10,000.50"
  /// ```
  String get thousandNumberFormat {
    String amountString = "0";

    if (isEmpty) {
      amountString = "0";
    } else {
      amountString = this;
    }
    amountString = amountString.cleanNumbers;
    double? amount = double.tryParse(amountString);

    amount ??= 0;

    var formatter = NumberFormat("#,##0.##########");
    String convertedAmount = formatter.format(amount);

    return convertedAmount;
  }

  /// Removes all commas (",") from the string.
  ///
  /// This is used internally before parsing to ensure that formatting characters
  /// do not interfere with the numeric conversion.
  ///
  /// @returns A new string with all commas removed.
  ///
  /// Example:
  /// ```dart
  /// final messyString = '10,000,000.50';
  /// print(messyString.cleanNumbers); // "10000000.50"
  /// ```
  String get cleanNumbers {
    return replaceAll(",", "");
  }
}
