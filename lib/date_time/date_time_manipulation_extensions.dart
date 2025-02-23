part of '../flutter_extend.dart';

extension DateTimeManipulationExtensions on DateTime {
  /// Add Number of Days to the DateTime
  DateTime addDays(int days) => add(Duration(days: days));

  /// Subtract Number of Days from the DateTime
  DateTime subtractDays(int days) => subtract(Duration(days: days));

  /// Add Number of Months to the DateTime
  DateTime addMonths(int months) => DateTime(year, month + months, day, hour,
      minute, second, millisecond, microsecond);

  /// Subtract Number of Months from the DateTime
  DateTime subtractMonths(int months) => DateTime(year, month - months, day, hour,
      minute, second, millisecond, microsecond);

  /// Add Number of Years to the DateTime
  DateTime addYears(int years) => DateTime(year + years, month, day, hour,
      minute, second, millisecond, microsecond);

  /// Subtract Number of Years from the DateTime
  DateTime subtractYears(int years) => DateTime(year - years, month, day, hour,
      minute, second, millisecond, microsecond);

  /// Adds Business Days to the current DateTime Object
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
