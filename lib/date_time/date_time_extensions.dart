part of '../flutter_extend.dart';

extension DateTimeExtensions on DateTime {
  /// Checks if the current DateTime provided is Today
  /// ```dart
  ///   print("Is Today? ${DateTime(2024, 1, 1).isToday}"); // false
  /// ```
  bool get isToday {
    final now = DateTime.now();
    return year == now.year && month == now.month && day == now.day;
  }

  /// Checks if given DateTime is in the past from current DateTime
  bool get isPast => isBefore(DateTime.now());

  /// Checks if given DateTime is in the future from current DateTime
  bool get isFuture => isAfter(DateTime.now());
}
