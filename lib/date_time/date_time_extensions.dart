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

  /// Gets the given DateTime's Month Name eg. January, February, March etc...
  String get monthName => DateFormat.MMMM().format(this);

  /// Gets the shortened of the given DateTime's Month Name eg. Jan, feb, Mar, etc...
  String get monthNameShort => DateFormat.MMM().format(this);
}
