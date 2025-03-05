part of '../flutter_extend.dart';

extension GlobalStringExtensions on String {
  /// Capitalize First Letter
  String capitalizeFirstLetter() =>
      isNotEmpty ? '${this[0].toUpperCase()}${substring(1)}' : this;

  /// Capitalize First Letter of Each Word
  String capitalizeFirstLetterOfEachWord() {
    final wordArray = split(' ');

    return wordArray.map((word) => word.capitalizeFirstLetter()).join(' ');
  }

  /// Mask part of the String with character while keeping the first and last visible Count characters
  String mask({int visibleCount = 2, String maskCharacter = '*'}) {
    if (length <= visibleCount * 2) return this;

    return substring(0, visibleCount) +
        maskCharacter * (length - visibleCount * 2) +
        substring(length - visibleCount);
  }

  /// Reverse a String
  String reverse() => split('').reversed.join('');

  /// Last N Characters
  String getLastNCharacters(int n) =>
      length >= n ? substring(length - n) : this;

  /// Truncate Name
  String truncateName() {
    final wordArray = split(' ');

    return wordArray.length > 1
        ? '${wordArray[0]} ${wordArray[1][0]}.'
        : wordArray[0];
  }
}
