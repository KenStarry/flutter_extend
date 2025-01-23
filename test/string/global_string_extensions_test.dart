import 'package:flutter_extend/flutter_extend.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Last N Characters of a String', () {
    test(
        'String of smaller length that the last N Characters returns the String',
        () {
      /// Arrange
      final text = 'Hello';

      /// Act
      final last10Characters = text.getLastNCharacters(10);

      /// Assert
      expect(last10Characters, 'Hello');
    });
  });

  group('Remove All Whitespaces', () {
    test('String with spaces in the middle should be removed', () {
      final text = 'This is a text with spaces';
      final newText = text.removeAllWhiteSpaces;

      expect(newText, 'Thisisatextwithspaces');
    });

    test('String with spaces in the start should be removed', () {
      final text = ' Thisisatextwithspaces';
      final newText = text.removeAllWhiteSpaces;

      expect(newText, 'Thisisatextwithspaces');
    });

    test('String with spaces in the end should be removed', () {
      final text = 'Thisisatextwithspaces ';
      final newText = text.removeAllWhiteSpaces;

      expect(newText, 'Thisisatextwithspaces');
    });

    test('String with spaces in the start and end only should be removed',
        () {
          final text = ' Thisisatextwithspaces ';
          final newText = text.removeAllWhiteSpaces;

          expect(newText, 'Thisisatextwithspaces');
        });

    test('String with no spaces should return the same string',
            () {
              final text = 'Thisisatextwithnospaces';
              final newText = text.removeAllWhiteSpaces;

              expect(newText, 'Thisisatextwithnospaces');
            });
  });
}
