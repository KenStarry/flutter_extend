part of '../flutter_extend.dart';

extension DateTimeFormattingExtensions on DateTime {
  /// Converts the past date into a human-readable "time ago" string.
  ///
  /// This method calculates the difference between [DateTime.now()] and this
  /// instance, returning a string like "2 months ago" or "Just now".
  ///
  /// **Note:** This implementation does not use the `intl` package for localization
  /// and always returns English phrases.
  ///
  /// @returns A string representing the elapsed time.
  ///
  /// Example:
  /// ```dart
  /// final past = DateTime.now().subtract(const Duration(hours: 3));
  /// print(past.timeAgo()); // "3 hours ago"
  /// ```
  String timeAgo() {
    final Duration diff = DateTime.now().difference(this);

    if (diff.inDays >= 365) {
      return '${(diff.inDays / 365).floor()} years ago';
    } else if (diff.inDays >= 30) {
      return '${(diff.inDays / 30).floor()} months ago';
    } else if (diff.inDays >= 7) {
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

  /// Converts a future date into a human-readable "time until" string.
  ///
  /// This method calculates the difference between this instance and [DateTime.now()],
  /// returning a string like "in 5 days" or "Just now".
  ///
  /// **Note:** This implementation does not use the `intl` package for localization
  /// and always returns English phrases.
  ///
  /// @returns A string representing the remaining time.
  ///
  /// Example:
  /// ```dart
  /// final future = DateTime.now().add(const Duration(minutes: 45));
  /// print(future.timeUntil()); // "in 45 minutes"
  /// ```
  String timeUntil() {
    final Duration diff = difference(DateTime.now());

    if (diff.inDays >= 365) {
      return 'in ${(diff.inDays / 365).floor()} years';
    } else if (diff.inDays >= 30) {
      return 'in ${(diff.inDays / 30).floor()} months';
    } else if (diff.inDays >= 7) {
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

  /// Gets the full name of the month for the given [DateTime].
  ///
  /// Uses the current system locale provided by the [intl] package.
  ///
  /// @returns The full month name (e.g., "January", "December").
  ///
  /// Example:
  /// ```dart
  /// print(DateTime(2025, 12, 1).monthName()); // "December"
  /// ```
  String monthName() => DateFormat.MMMM().format(this);

  /// Gets the abbreviated name of the month for the given [DateTime].
  ///
  /// Uses the current system locale provided by the [intl] package.
  ///
  /// @returns The abbreviated month name (e.g., "Jan", "Dec").
  ///
  /// Example:
  /// ```dart
  /// print(DateTime(2025, 12, 1).monthNameShort()); // "Dec"
  /// ```
  String monthNameShort() => DateFormat.MMM().format(this);

  /// Gets the full name of the day of the week for the given [DateTime].
  ///
  /// Uses the current system locale provided by the [intl] package.
  ///
  /// @returns The full day name (e.g., "Monday", "Sunday").
  ///
  /// Example:
  /// ```dart
  /// print(DateTime(2025, 12, 1).dayName()); // "Monday"
  /// ```
  String dayName() => DateFormat.EEEE().format(this);

  /// Gets the abbreviated name of the day of the week for the given [DateTime].
  ///
  /// Uses the current system locale provided by the [intl] package.
  ///
  /// @returns The abbreviated day name (e.g., "Mon", "Sun").
  ///
  /// Example:
  /// ```dart
  /// print(DateTime(2025, 12, 1).dayNameShort()); // "Mon"
  /// ```
  String dayNameShort() => DateFormat.E().format(this);

  /// Formats the date into the slash-separated 'dd/MM/yyyy' style.
  ///
  /// @returns A formatted date string (e.g., "31/12/2025").
  ///
  /// Example:
  /// ```dart
  /// print(DateTime(2025, 12, 31).slashedDate()); // "31/12/2025"
  /// ```
  String slashedDate() => DateFormat('dd/MM/yyyy').format(this);

  /// Calculates the ISO 8601 week number (1-53) for the given date.
  ///
  /// The week number is calculated based on the day of the year and the first
  /// day of the week.
  ///
  /// @returns The week number as an integer.
  ///
  /// Example:
  /// ```dart
  /// // January 1st is typically Week 1
  /// print(DateTime(2025, 1, 1).weekNumber()); // 1
  /// ```
  int weekNumber() {
    final firstDayOfYear = DateTime(year, 1, 1);
    final daysSinceFirstDay = difference(firstDayOfYear).inDays;

    return ((daysSinceFirstDay + firstDayOfYear.weekday - 1) / 7).ceil();
  }
}
