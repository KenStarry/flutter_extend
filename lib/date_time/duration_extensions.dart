part of '../flutter_extend.dart';

extension DurationExtensions on int {
  /// Days
  Duration get szDays => Duration(days: this);

  /// Hours
  Duration get szHours => Duration(hours: this);

  /// Minutes
  Duration get szMins => Duration(minutes: this);

  /// Seconds
  Duration get szSecs => Duration(seconds: this);

  /// Milliseconds
  Duration get szMilliSecs => Duration(milliseconds: this);

  /// Microseconds
  Duration get szMicroSecs => Duration(microseconds: this);
}
