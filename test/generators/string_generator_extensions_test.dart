import 'package:flutter_extend/flutter_extend.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("String", () {
    test("Generate Lorem String", () {
      final randomString = "".generateLoremIpsum(wordCount: 10);
      expect(randomString, "Lorem ipsum dolor sit amet consectetur adipiscing elit sed do");
    });
  });
}