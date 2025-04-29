import 'package:flutter_extend/flutter_extend.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Currency formatter', () {
    test(
        'value with commas should be formatted to a number with commas removed',
        () {
      /// Arrange
      final text = '50,000';

      /// Act
      final cleanedNumber = text.cleanNumbers;

      /// Assert
      expect(cleanedNumber, '50000');
    });

    test('add commas efficiently to a number with commas removed', () {
      /// Arrange
      final text = '50000';
      final text2 = '5000000';

      /// Act
      final formattedNumber = text.thousandNumberFormat;
      final formattedNumber2 = text2.thousandNumberFormat;

      /// Assert
      expect(formattedNumber, '50,000');
      expect(formattedNumber2, "5,000,000");
    });
  });
}
