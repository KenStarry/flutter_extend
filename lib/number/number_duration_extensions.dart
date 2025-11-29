part of '../flutter_extend.dart';

extension NumberDurationExtensions on int {
  /// Converts the integer value to a [Duration] object representing days.
  ///
  /// Example:
  /// ```dart
  /// final longWait = 3.days; // Duration(days: 3)
  /// ```
  /// @returns A [Duration] object representing the specified number of days.
  Duration get days => Duration(days: this);

  /// Converts the integer value to a [Duration] object representing hours.
  ///
  /// Example:
  /// ```dart
  /// final workTime = 8.hours; // Duration(hours: 8)
  /// ```
  /// @returns A [Duration] object representing the specified number of hours.
  Duration get hours => Duration(hours: this);

  /// Converts the integer value to a [Duration] object representing minutes.
  ///
  /// Example:
  /// ```dart
  /// final shortBreak = 15.minutes; // Duration(minutes: 15)
  /// ```
  /// @returns A [Duration] object representing the specified number of minutes.
  Duration get minutes => Duration(minutes: this);

  /// Converts the integer value to a [Duration] object representing seconds.
  ///
  /// This is often used for timeouts or short delays.
  ///
  /// Example:
  /// ```dart
  /// await Future.delayed(5.seconds); // Duration(seconds: 5)
  /// ```
  /// @returns A [Duration] object representing the specified number of seconds.
  Duration get seconds => Duration(seconds: this);

  /// Converts the integer value to a [Duration] object representing milliseconds.
  ///
  /// Example:
  /// ```dart
  /// final flash = 250.milliSeconds; // Duration(milliseconds: 250)
  /// ```
  /// @returns A [Duration] object representing the specified number of milliseconds.
  Duration get milliSeconds => Duration(milliseconds: this);

  /// Converts the integer value to a [Duration] object representing microseconds.
  ///
  /// Example:
  /// ```dart
  /// final tick = 50.microSeconds; // Duration(microseconds: 50)
  /// ```
  /// @returns A [Duration] object representing the specified number of microseconds.
  Duration get microSeconds => Duration(microseconds: this);
}
