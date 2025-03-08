import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Get Days from Duration", () {
    final number = 5;
    final days = number.days;

    expect(days, Duration(days: 5));
  });
}
