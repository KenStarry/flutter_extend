part of '../flutter_extend.dart';

extension StringFormatterExtensions on String {
  /// Capitalize First Letter
  String capitalizeFirstLetter() =>
      isNotEmpty ? '${this[0].toUpperCase()}${substring(1)}' : this;

  /// Capitalize First Letter of Each Word
  String toTitleCase() {
    final wordArray = split(' ');

    return wordArray.map((word) => word.capitalizeFirstLetter()).join(' ');
  }

  /// Convert Snake case to camel case
  String toCamelCase() => split('_').asMap().entries.map((entry) {
        return entry.key == 0
            ? entry.value
            : entry.value.capitalizeFirstLetter();
      }).join('');

  /// Convert a String to Slug eg. "Hello World!" -> "hello-world"
  String toSlug() => toLowerCase()
      .replaceAll(RegExp(r'[^a-z0-9]+'), '-')
      .replaceAll(RegExp(r'^-+|-+$'), '');

  /// String to Base64
  String toBase64() => base64Encode(utf8.encode(this));

  /// Decodes a Base64 String
  String fromBase64() => utf8.decode(base64Decode(this));
}
