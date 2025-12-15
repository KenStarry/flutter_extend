extension DateTimeManipulationExtensions on DateTime {
  /// Adds a number of [days] to the current [DateTime] object.
  ///
  /// This is a simplified wrapper for [add(Duration(days: days))].
  ///
  /// @param days The number of days to add.
  /// @returns A new [DateTime] object with the added days.
  ///
  /// Example:
  /// ```dart
  /// final futureDate = DateTime.now().addDays(5);
  /// ```
  DateTime addDays(int days) => add(Duration(days: days));

  /// Subtracts a number of [days] from the current [DateTime] object.
  ///
  /// This is a simplified wrapper for [subtract(Duration(days: days))].
  ///
  /// @param days The number of days to subtract.
  /// @returns A new [DateTime] object with the subtracted days.
  ///
  /// Example:
  /// ```dart
  /// final pastDate = DateTime.now().subtractDays(10);
  /// ```
  DateTime subtractDays(int days) => subtract(Duration(days: days));

  /// Adds a number of [months] to the current [DateTime] object.
  ///
  /// **NOTE:** This method is susceptible to "date overflow" errors.
  /// For example, adding one month to January 31st will result in March 3rd
  /// (February 31st overflows to March).
  ///
  /// @param months The number of months to add.
  /// @returns A new [DateTime] object with the added months.
  ///
  /// Example:
  /// ```dart
  /// // Goes from March 15th to June 15th
  /// final newDate = DateTime(2025, 3, 15).addMonths(3);
  /// ```
  DateTime addMonths(int months) => DateTime(year, month + months, day, hour,
      minute, second, millisecond, microsecond);

  /// Subtracts a number of [months] from the current [DateTime] object.
  ///
  /// **NOTE:** This method is susceptible to "date overflow" errors.
  /// For example, subtracting one month from March 31st may incorrectly resolve
  /// to January 31st if the engine handles month arithmetic rigidly.
  ///
  /// @param months The number of months to subtract.
  /// @returns A new [DateTime] object with the subtracted months.
  ///
  /// Example:
  /// ```dart
  /// // Goes from May 20th to February 20th
  /// final pastDate = DateTime(2025, 5, 20).subtractMonths(3);
  /// ```
  DateTime subtractMonths(int months) => DateTime(year, month - months, day,
      hour, minute, second, millisecond, microsecond);

  /// Adds a number of [years] to the current [DateTime] object.
  ///
  /// **NOTE:** Be mindful of leap years. Adding one year to Feb 29th will result
  /// in Feb 28th of the following non-leap year.
  ///
  /// @param years The number of years to add.
  /// @returns A new [DateTime] object with the added years.
  ///
  /// Example:
  /// ```dart
  /// final futureYear = DateTime.now().addYears(5);
  /// ```
  DateTime addYears(int years) => DateTime(
      year + years, month, day, hour, minute, second, millisecond, microsecond);

  /// Subtracts a number of [years] from the current [DateTime] object.
  ///
  /// **NOTE:** Be mindful of leap years. Subtracting one year from Feb 29th will
  /// result in Feb 28th of the previous non-leap year.
  ///
  /// @param years The number of years to subtract.
  /// @returns A new [DateTime] object with the subtracted years.
  ///
  /// Example:
  /// ```dart
  /// final pastYear = DateTime.now().subtractYears(2);
  /// ```
  DateTime subtractYears(int years) => DateTime(
      year - years, month, day, hour, minute, second, millisecond, microsecond);

  /// Adds a number of business days (Monday to Friday) to the current [DateTime] object.
  ///
  /// Weekends (Saturday and Sunday) are automatically skipped.
  ///
  /// @param days The number of business days to add.
  /// @returns A new [DateTime] object that is [days] business days in the future.
  ///
  /// Example:
  /// ```dart
  /// // If today is Friday, adding 1 business day results in Monday.
  /// final nextWorkDay = DateTime(2025, 11, 28).addBusinessDays(1);
  /// ```
  DateTime addBusinessDays(int days) {
    var result = this;

    while (days > 0) {
      result = result.add(Duration(days: 1));
      if (result.weekday != DateTime.saturday &&
          result.weekday != DateTime.sunday) {
        days--;
      }
    }

    return result;
  }
}
