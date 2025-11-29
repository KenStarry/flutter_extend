part of '../flutter_extend.dart';

extension DateTimeComparisonExtensions on DateTime {
  /// Checks if the current [DateTime] provided is the same calendar day as today.
  ///
  /// This comparison ignores time components (hours, minutes, seconds).
  ///
  /// @returns True if the day, month, and year match the current day.
  ///
  /// Example:
  /// ```dart
  /// final today = DateTime.now();
  /// print(today.isToday()); // true
  /// print(today.subtract(const Duration(days: 1)).isToday()); // false
  /// ```
  bool isToday() {
    final DateTime now = DateTime.now();
    final DateTime date = DateTime(year, month, day);
    final DateTime today = DateTime(now.year, now.month, now.day);

    return today.difference(date).inDays == 0;
  }

  /// Checks if the current [DateTime] provided was yesterday.
  ///
  /// This comparison ignores time components (hours, minutes, seconds).
  ///
  /// @returns True if the date is exactly one calendar day before today.
  ///
  /// Example:
  /// ```dart
  /// final yesterday = DateTime.now().subtract(const Duration(days: 1));
  /// print(yesterday.isYesterday()); // true
  /// ```
  bool isYesterday() {
    final DateTime now = DateTime.now();
    final DateTime date = DateTime(year, month, day);
    final DateTime today = DateTime(now.year, now.month, now.day);

    // Checks if the difference between today and the date is exactly 1 day.
    return today.difference(date).inDays == 1;
  }

  /// Checks if the current [DateTime] provided is tomorrow.
  ///
  /// This comparison ignores time components (hours, minutes, seconds).
  ///
  /// @returns True if the date is exactly one calendar day after today.
  ///
  /// Example:
  /// ```dart
  /// final tomorrow = DateTime.now().add(const Duration(days: 1));
  /// print(tomorrow.isTomorrow()); // true
  /// ```
  bool isTomorrow() {
    final DateTime now = DateTime.now();
    final DateTime date = DateTime(year, month, day);
    final DateTime today = DateTime(now.year, now.month, now.day);

    // Checks if the difference between today and the date is exactly -1 day.
    return today.difference(date).inDays == -1;
  }

  /// Checks if the given [DateTime] is in the past relative to the current moment ([DateTime.now()]).
  ///
  /// @returns True if the DateTime instance is before the current time.
  ///
  /// Example:
  /// ```dart
  /// print(DateTime(2000, 1, 1).isPast()); // true
  /// ```
  bool isPast() => isBefore(DateTime.now());

  /// Checks if the given [DateTime] is in the future relative to the current moment ([DateTime.now()]).
  ///
  /// @returns True if the DateTime instance is after the current time.
  ///
  /// Example:
  /// ```dart
  /// print(DateTime.now().add(const Duration(hours: 1)).isFuture()); // true
  /// ```
  bool isFuture() => isAfter(DateTime.now());
}
