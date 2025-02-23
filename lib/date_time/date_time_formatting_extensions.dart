part of '../flutter_extend.dart';

extension DateTimeFormattingExtensions on DateTime {
  /// Get Time Ago
  String timeAgo() {
    final Duration diff = DateTime.now().difference(this);

    if (diff.inDays > 365) {
      return '${(diff.inDays / 365).floor()} years ago';
    } else if (diff.inDays > 30) {
      return '${(diff.inDays / 30).floor()} months ago';
    } else if (diff.inDays > 7) {
      return '${(diff.inDays / 7).floor()} weeks ago';
    } else if (diff.inDays > 0) {
      return '${diff.inDays} days ago';
    } else if (diff.inHours > 0) {
      return '${diff.inHours} hours ago';
    } else if (diff.inMinutes > 0) {
      return '${diff.inMinutes} minutes ago';
    } else {
      return 'Just now';
    }
  }

  /// Get Time Until
  String timeUntil() {
    final Duration diff = difference(DateTime.now());

    if (diff.inDays > 365) {
      return 'in ${(diff.inDays / 365).floor()} years';
    } else if (diff.inDays > 30) {
      return 'in ${(diff.inDays / 30).floor()} months';
    } else if (diff.inDays > 7) {
      return 'in ${(diff.inDays / 7).floor()} weeks';
    } else if (diff.inDays > 0) {
      return 'in ${diff.inDays} days';
    } else if (diff.inHours > 0) {
      return 'in ${diff.inHours} hours';
    } else if (diff.inMinutes > 0) {
      return 'in ${diff.inMinutes} minutes';
    } else {
      return 'Just now';
    }
  }

  /// Gets the given DateTime's Month Name eg. January, February, March etc...
  String monthName() => DateFormat.MMMM().format(this);

  /// Gets the shortened of the given DateTime's Month Name eg. Jan, feb, Mar, etc...
  String monthNameShort() => DateFormat.MMM().format(this);

  /// Gets the given DateTime's Day Name eg. Monday, Tuesday, Wednesday etc...
  String dayName() => DateFormat.EEEE().format(this);

  /// Gets the shortened of the given DateTime's Day Name eg. Mon, Tue, Wed etc...
  String dayNameShort() => DateFormat.E().format(this);

  /// Gets the Slashed Date Format of the given DateTime eg. 31/12/2025
  String slashedDate() => DateFormat('dd/MM/yyyy').format(this);

  /// Get Week Number of the Given Date
  int weekNumber() {
    final firstDayOfYear = DateTime(year, 1, 1);
    final daysSinceFirstDay = difference(firstDayOfYear).inDays;

    return ((daysSinceFirstDay + firstDayOfYear.weekday - 1) / 7).ceil();
  }
}
