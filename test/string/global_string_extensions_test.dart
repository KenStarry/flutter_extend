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
      final last10Characters = text.xGetLastNCharacters(10);

      /// Assert
      expect(last10Characters, 'Hello');
    });
  });
}
