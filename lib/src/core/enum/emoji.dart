
import 'emoji_category.dart';

class Emoji {
  final String emoji;
  final EmojiCategory emojiCategory;

  const Emoji._(this.emoji, this.emojiCategory);

  /// Happy Emojis
  static const Emoji grin = Emoji._('😄', EmojiCategory.happy);
  static const Emoji laugh = Emoji._('😂', EmojiCategory.happy);
  static const Emoji laughRolling = Emoji._('🤣', EmojiCategory.happy);
  static const Emoji smile = Emoji._('😁', EmojiCategory.happy);
  static const Emoji happyEyes = Emoji._('🥹', EmojiCategory.happy);

  @override
  String toString() => emoji;
}
