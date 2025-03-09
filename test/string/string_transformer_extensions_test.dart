import 'package:flutter_extend/flutter_extend.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Emoji Tests", () {
    test('Add Smile Emoji should return Smile Emoji', () {
      final text = 'Hi there';
      final newText = text.withEmoji(EmojiCategory.happy.grin);

      expect(newText, 'Hi there 😄');
    });
  });

  group("With Default Value", () {
    test("Null String returns with the default value", () {
      String? text;

      expect(text.withDefaultValue('no text'), 'no text');
    });

    test("Empty String returns with the default value", () {
      String text = '';

      expect(text.withDefaultValue('no text'), 'no text');
    });
  });
}
