import 'package:flutter_extend/flutter_extend.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('To Currency', () {
    test("A thousand can be separated into currency with KES as the symbol",
        () {
      final int amount = 1000;

      expect(amount.toCurrency(decimalPlaces: 0), "KES 1,000");
    });

    test(
        "A thousand can be separated into currency with KES as the symbol and 2 decimal places",
        () {
      final int amount = 1000;

      expect(amount.toCurrency(decimalPlaces: 2), "KES 1,000.00");
    });

    test("Passing a null currency symbol returns the number without the symbol",
        () {
      final int amount = 1000;

      expect(amount.toCurrency(decimalPlaces: 2, currencySymbol: null),
          "1,000.00");
    });
  });

  group("To Abbreviated", () {
    test("Abbreviate a million with 1 decimal count returns 1.0M", () {
      final int amount = 1000000;

      expect(amount.toAbbreviated(decimalCount: 1), '1.0M');
    });

    test("Abbreviate a million with 0 decimal count returns 1M", () {
      final int amount = 1000000;

      expect(amount.toAbbreviated(decimalCount: 0), '1M');
    });

    test("Abbreviate a million with 2 decimal counts returns 1.10M", () {
      final int amount = 1100000;

      expect(amount.toAbbreviated(decimalCount: 2), '1.10M');
    });

    test("Abbreviate a billion with 1 decimal count returns 1.1B", () {
      final int amount = 1100000000;

      expect(amount.toAbbreviated(decimalCount: 1), '1.1B');
    });

    test("Abbreviating two hundred thousand with 1 decimal count returns 200K",
        () {
      final double amount = 200000.00;

      expect(amount.toAbbreviated(decimalCount: 0), '200K');
    });

    test(
        "Abbreviating two hundred thousand with 1 decimal count and lowercase activated returns 200k",
        () {
      final double amount = 200000.00;

      expect(amount.toAbbreviated(decimalCount: 0, isLowercase: true), '200k');
    });

    test(
        "Abbreviating two hundred thousand with 1 decimal count, lowercase deactivated and with Currency to the Left returns KES 200k",
        () {
      final double amount = 200000.00;

      expect(
          amount.toAbbreviated(
              decimalCount: 0,
              isLowercase: false,
              currencySymbol: 'KES',
              currencyDirection: CurrencyDirection.left),
          'KES 200K');
    });
  });
}
