part of '../flutter_extend.dart';

extension NumberDurationExtensions on int {
  /// Days
  Duration get days => Duration(days: this);

  /// Hours
  Duration get hours => Duration(hours: this);

  /// Minutes
  Duration get minutes => Duration(minutes: this);

  /// Seconds
  Duration get seconds => Duration(seconds: this);

  /// Milliseconds
  Duration get milliSeconds => Duration(milliseconds: this);

  /// Microseconds
  Duration get microSeconds => Duration(microseconds: this);
}
