part of '../flutter_extend.dart';

extension StringTransformerExtensionsNullable on String? {
  /// With Default Value - Returns a default value if String is Empty or null
  String withDefaultValue(String defaultValue) =>
      (this == null || (this != null && this!.isEmpty)) ? defaultValue : this!;
}

extension StringTransformerExtensions on String {
  /// Add Emoji
  String withEmoji(Emoji emoji) => '$this ${emoji.emoji}';
}
