part of '../flutter_extend.dart';

extension DurationExtensions on int {
  /// Days
  Duration get xDays => Duration(days: this);

  /// Hours
  Duration get xHours => Duration(hours: this);

  /// Minutes
  Duration get xMins => Duration(minutes: this);

  /// Seconds
  Duration get xSecs => Duration(seconds: this);

  /// Milliseconds
  Duration get xMilliSecs => Duration(milliseconds: this);

  /// Microseconds
  Duration get xMicroSecs => Duration(microseconds: this);
}
