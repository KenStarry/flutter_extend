part of '../flutter_extend.dart';

extension StringTransformerExtensionsNullable on String? {
  /// With Default Value - Returns a default value if String is Empty or null
  String withDefaultValue(String defaultValue) =>
      (this == null || (this != null && this!.isEmpty)) ? defaultValue : this!;
}

extension StringTransformerExtensions on String {
  /// Add Emoji
  String withEmoji(Emoji emoji) => '$this ${emoji.emoji}';

  /// Encode a String
  String withUrlEncoded() => Uri.encodeComponent(this);

  /// Add a Hashtag to String
  String withHashtag() => '#${replaceAll(' ', '').trim()}';

  /// Truncate the String and add Ellipsis if its too long
  String withEllipsis(int maxLength) {
    if (length <= maxLength) return this;

    return '${substring(0, maxLength)}...';
  }

  /// Wrap a String in brackets
  String withBrackets([String left = '(', String right = ')']) =>
      '$left$this$right';

  /// Convert String to Ordinal eg. 1st, 2nd, 23rd
  String withOrdinal() {
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
}
