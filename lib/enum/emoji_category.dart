part of '../flutter_extend.dart';

enum EmojiCategory { happy, sad, love, angry, food, drink, animal, random }

extension EmojiCategoryExtension on EmojiCategory {
  /// Happy Emojis
  Emoji get grin => Emoji.grin;

  Emoji get laugh => Emoji.laugh;

  Emoji get laughRolling => Emoji.laughRolling;

  Emoji get smile => Emoji.smile;

  Emoji get happyEyes => Emoji.happyEyes;
}
