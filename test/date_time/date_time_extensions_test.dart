import 'package:flutter_extend/flutter_extend.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Check if DateTime is Today', () {
    test('Give a previous date should return false', () {
      final previousDate = DateTime(2023, 1, 1);
      final isToday = previousDate.isToday;

      expect(isToday, false);
    });

    test('Give current date should return true', () {
      final currentDate = DateTime.now();
      final isToday = currentDate.isToday;

      expect(isToday, true);
    });

    test('Give a future date should return false', () {
      final futureDate = DateTime(2050, 1, 1);
      final isToday = futureDate.isToday;

      expect(isToday, false);
    });
  });
}
