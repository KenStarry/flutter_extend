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

  /// Convert String to Ordinal eg. 1st, 2nd, 23rd
  String toOrdinal() {
    if (isEmpty || !isDigitsOnly()) return this;

    final number = int.parse(this);

    if (number % 100 >= 11 && number % 100 <= 13) return '${this}th';

    switch (number % 10) {
      case 1:
        return '${this}st';
      case 2:
        return '${this}nd';
      case 3:
        return '${this}rd';
      default:
        return '${this}th';
    }
  }

  /// String to Base64
  String toBase64() => base64Encode(utf8.encode(this));

  /// Decodes a Base64 String
  String fromBase64() => utf8.decode(base64Decode(this));
}
