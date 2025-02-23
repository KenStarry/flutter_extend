part of '../flutter_extend.dart';

extension DateTimeComparisonExtensions on DateTime {
  /// Checks if the current DateTime provided is Today
  /// ```dart
  ///   print("Is Today? ${DateTime(2024, 1, 1).isToday}"); // false
  /// ```
  bool isToday() {
    final DateTime now = DateTime.now();
    final DateTime date = DateTime(year, month, day);

    return now.difference(date).inDays == 0;
  }

  /// Check if Date is Yesterday
  bool isYesterday() {
    final DateTime now = DateTime.now();
    final DateTime date = DateTime(year, month, day);

    return now.difference(date).inDays == 1;
  }

  /// Check if Date is Tomorrow
  bool isTomorrow() {
    final DateTime now = DateTime.now();
    final DateTime date = DateTime(year, month, day);

    return now.difference(date).inDays == -1;
  }

  /// Checks if given DateTime is in the past from current DateTime
  bool isPast() => isBefore(DateTime.now());

  /// Checks if given DateTime is in the future from current DateTime
  bool isFuture() => isAfter(DateTime.now());
}