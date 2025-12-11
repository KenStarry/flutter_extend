import 'package:flutter_extend/flutter_extend.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Int Generators", () {
    test("Generate random Strings", () {
      final randomString = 5.randomString;

      expect(randomString.length, 5);
    });

    test("Generate Lorem Words", () {
      final lorem = 10.loremWords;

      expect(lorem.split(' ').length, 10);
    });
  });
}
