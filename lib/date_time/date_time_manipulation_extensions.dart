part of '../flutter_extend.dart';

extension DateTimeManipulationExtensions on DateTime {

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
}