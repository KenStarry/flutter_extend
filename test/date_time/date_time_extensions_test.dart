import 'package:flutter_extend/flutter_extend.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  //  is Today
  group('DateTime is Today', () {
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

  //  is Past
  group('DateTime is Past', () {
    test('Give a previous date should return true', () {
      final previousDate = DateTime(2023, 1, 1);
      final isToday = previousDate.isPast;

      expect(isToday, true);
    });

    test('Give current date should return false', () {
      final currentDate = DateTime.now();
      final isToday = currentDate.isPast;

      expect(isToday, false);
    });

    test('Give a future date should return false', () {
      final futureDate = DateTime(2050, 1, 1);
      final isToday = futureDate.isPast;

      expect(isToday, false);
    });
  });

  //  is Future
  group('DateTime is Future', () {
    test('Give a previous date should return false', () {
      final previousDate = DateTime(2023, 1, 1);
      final isToday = previousDate.isFuture;

      expect(isToday, false);
    });

    test('Give current date should return false', () {
      final currentDate = DateTime.now();
      final isToday = currentDate.isFuture;

      expect(isToday, false);
    });

    test('Give a future date should return true', () {
      final futureDate = DateTime(2050, 1, 1);
      final isToday = futureDate.isFuture;

      expect(isToday, true);
    });
  });

  //  get Month Name
  group('DateTime Month Name', () {
    test("Should Return January as the month name", () {
      final dateTime = DateTime(2025, 1);

      final name = dateTime.monthName;

      expect(name, 'January');
    });

    test("Should Return March as the month name", () {
      final dateTime = DateTime(2025, 3);

      final name = dateTime.monthName;

      expect(name, 'March');
    });
  });

  //  get Month Name Short
  group('DateTime Month Name Short', () {
    test("Should Return Jan as the month name", () {
      final dateTime = DateTime(2025, 1);

      final name = dateTime.monthNameShort;

      expect(name, 'Jan');
    });

    test("Should Return Mar as the month name", () {
      final dateTime = DateTime(2025, 3);

      final name = dateTime.monthNameShort;

      expect(name, 'Mar');
    });
  });
}
