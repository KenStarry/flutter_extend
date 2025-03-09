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

  group('Ordinals', (){
    test("String with Ordinals eg. 1st, 2nd etc", () {
      String text = '23';

      expect(text.withOrdinal(), '23rd');
    });

    test("Non-Numeric string should not work but return the string", () {
      String text = 'Ken 23';

      expect(text.withOrdinal(), 'Ken 23');
    });
  });

  test("Encode a String to URI format", () {
    String text = 'hello world';

    expect(text.withUrlEncoded(), 'hello%20world');
  });

  test("Add a Hashtag before a text", () {
    String text = 'hello world';

    expect(text.withHashtag(), '#helloworld');
  });

  test("Add brackets before a text", () {
    String text = 'hello world';

    expect(text.withBrackets('(', ')'), '(hello world)');
  });

  test("Add ellipsis if the text is too long", () {
    String text = 'hello world';

    expect(text.withEllipsis(8), 'hello wo...');
  });
}
