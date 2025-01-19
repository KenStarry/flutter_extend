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
}
