part of '../flutter_extend.dart';

extension GlobalStringExtensions on String {
  /// Truncate Name
  String xTruncateName() {
    final wordArray = split(' ');

    return wordArray.length > 1
        ? '${wordArray[0]} ${wordArray[1][0]}.'
        : wordArray[0];
  }

  /// Capitalize any letter
}
