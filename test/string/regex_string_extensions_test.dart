import 'package:flutter_extend/string/regex_string_extensions.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Removing all Digits From a Text', () {
    test(
        "A string containing numbers should be removed to remain with the string",
        () {
      final text = 'Sheilla123';
      final text2 = '123Sheilla123 Ken24';
      final text3 = '123Sheilla 12Pookie1 Ken24';
      final text4 = '123Sheilla 123Sheilla-= 12Pookie1 7Ken24 BooBoo';
      final newText = text4.removeAllWordsStartingWithButNotContainingNumbers();

      expect(newText, "12Pookie1 7Ken24 BooBoo");
    });
  });
}
