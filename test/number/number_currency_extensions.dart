import 'package:flutter_extend/flutter_extend.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {

  group("To Abbreviated", (){
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
  });
}