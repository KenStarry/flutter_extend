part of '../flutter_extend.dart';

extension DurationExtensions on int {
  /// Days
  Duration get days => Duration(days: this);

  /// Hours
  Duration get hours => Duration(hours: this);

  /// Minutes
  Duration get mins => Duration(minutes: this);

  /// Seconds
  Duration get secs => Duration(seconds: this);

  /// Milliseconds
  Duration get milliSecs => Duration(milliseconds: this);

  /// Microseconds
  Duration get microSecs => Duration(microseconds: this);
}
