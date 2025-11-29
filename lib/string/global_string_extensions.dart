part of '../flutter_extend.dart';

extension GlobalStringExtensions on String {
  /// Masks the central portion of the string while keeping a fixed number of
  /// characters visible at the beginning and end.
  ///
  /// This is essential for securely displaying sensitive data like credit card numbers,
  /// email addresses, or account IDs.
  ///
  /// @param visibleCount The number of characters to keep visible at the start and end (default: 2).
  /// @param maskCharacter The character used to hide the central portion (default: '*').
  /// @returns A masked string. If the string is too short, the original string is returned.
  ///
  /// Example (Credit Card Masking):
  /// ```dart
  /// final card = '1234567890123456';
  /// print(card.mask(visibleCount: 4)); // "1234********3456"
  /// ```
  ///
  /// Example (Email Masking):
  /// ```dart
  /// final email = 'user@domain.com';
  /// print(email.mask(visibleCount: 1, maskCharacter: 'X')); // "uXXXXXXXXXX.X"
  /// ```
  String mask({int visibleCount = 2, String maskCharacter = '*'}) {
    if (length <= visibleCount * 2) return this;

    return substring(0, visibleCount) +
        maskCharacter * (length - visibleCount * 2) +
        substring(length - visibleCount);
  }

  /// Reverses the order of the characters in the string.
  ///
  /// @returns The reversed string.
  ///
  /// Example:
  /// ```dart
  /// final text = 'dart';
  /// print(text.reverse()); // "trad"
  /// ```
  String reverse() => split('').reversed.join('');

  /// Retrieves the last N characters of the string.
  ///
  /// If the string's length is less than [n], the original string is returned.
  ///
  /// @param n The number of characters to retrieve from the end of the string.
  /// @returns A substring containing the last [n] characters.
  ///
  /// Example:
  /// ```dart
  /// final id = 'TX202512345';
  /// print(id.getLastNCharacters(4)); // "2345"
  /// ```
  String getLastNCharacters(int n) =>
      length >= n ? substring(length - n) : this;

  /// Truncates a full name (first and last name) to show the first name and the initial of the last name.
  ///
  /// If the string contains only one word, the original word is returned.
  ///
  /// @returns A formatted string (e.g., "John D.").
  ///
  /// Example:
  /// ```dart
  /// final name1 = 'Alice Wonderland';
  /// print(name1.truncateName()); // "Alice W."
  ///
  /// final name2 = 'Bob';
  /// print(name2.truncateName()); // "Bob"
  /// ```
  String truncateName() {
    final wordArray = split(' ');

    return wordArray.length > 1
        ? '${wordArray[0]} ${wordArray[1][0]}.'
        : wordArray[0];
  }
}
