import 'package:flutter_extend/src/extensions/strings/regex_string_extensions.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Removing all Digits From a Text', () {
    test(
        "A string containing numbers should be removed to remain with the string",
        () {
      final text2 = '123Hello123 Ken24';
      final newText = text2.removeAllWordsStartingWithNumber();

      expect(newText, "Ken24");
    });
  });
}
