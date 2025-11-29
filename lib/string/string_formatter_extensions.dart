part of '../flutter_extend.dart';

extension StringFormatterExtensions on String {
  /// Capitalizes the first letter of the string.
  ///
  /// If the string is empty, it is returned as is.
  ///
  /// @returns A new string with the first letter capitalized.
  ///
  /// Example:
  /// ```dart
  /// print('hello world'.capitalizeFirstLetter()); // "Hello world"
  /// print(''.capitalizeFirstLetter());            // ""
  /// ```
  String capitalizeFirstLetter() =>
      isNotEmpty ? '${this[0].toUpperCase()}${substring(1)}' : this;

  /// Capitalizes the first letter of every word in the string.
  ///
  /// This is useful for title displays and proper names.
  ///
  /// @returns A new string in Title Case.
  ///
  /// Example:
  /// ```dart
  /// print('the quick brown fox'.toTitleCase()); // "The Quick Brown Fox"
  /// ```
  String toTitleCase() {
    final wordArray = split(' ');

    return wordArray.map((word) => word.capitalizeFirstLetter()).join(' ');
  }

  /// Converts a `snake_case` string into `camelCase`.
  ///
  /// The first word remains lowercase, and subsequent words after an underscore
  /// are capitalized.
  ///
  /// @returns A new string in camelCase format.
  ///
  /// Example:
  /// ```dart
  /// print('user_profile_data'.toCamelCase()); // "userProfileData"
  /// ```
  String toCamelCase() => split('_').asMap().entries.map((entry) {
        return entry.key == 0
            ? entry.value
            : entry.value.capitalizeFirstLetter();
      }).join('');

  /// Converts a string into a URL-friendly slug format.
  ///
  /// The process involves converting to lowercase, replacing all non-alphanumeric
  /// characters (except hyphens) with a hyphen '-', and trimming leading/trailing hyphens.
  ///
  /// @returns A new string in slug format (e.g., "hello-world").
  ///
  /// Example:
  /// ```dart
  /// print('Best Post Ever! (2025)'.toSlug()); // "best-post-ever-2025"
  /// print('--hello world--'.toSlug());         // "hello-world"
  /// ```
  String toSlug() => toLowerCase()
      .replaceAll(RegExp(r'[^a-z0-9]+'), '-')
      .replaceAll(RegExp(r'^-+|-+$'), '');

  /// Encodes the string into a Base64 string representation.
  ///
  /// This uses [utf8.encode] before Base64 encoding.
  ///
  /// @returns The Base64 encoded string.
  ///
  /// Example:
  /// ```dart
  /// final encoded = 'secret'.toBase64(); // "c2VjcmV0"
  /// ```
  String toBase64() => base64Encode(utf8.encode(this));

  /// Decodes a Base64 encoded string back to its original UTF-8 string format.
  ///
  /// @returns The decoded string.
  ///
  /// Example:
  /// ```dart
  /// final original = 'c2VjcmV0'.fromBase64(); // "secret"
  /// ```
  String fromBase64() => utf8.decode(base64Decode(this));
}
