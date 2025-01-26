import 'package:flutter_extend/flutter_extend.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Sort By (Does not return the list)', () {
    test('Return sorted list after invoking the sortBy method', () {
      final cars = ["Urus", "BMW", "Anodite", "Ferari", "Lambo"];
      cars.sortBy((car) => car);

      expect(cars, ["Anodite", "BMW", "Ferari", "Lambo", "Urus"]);
    });
  });

  group('Sort By (Returns the list)', () {
    test('Return sorted list after invoking the sortBy method', () {
      final cars = ["Urus", "BMW", "Anodite", "Ferari", "Lambo"].sortByAndReturnSorted(((car) => car));

      expect(cars, ["Anodite", "BMW", "Ferari", "Lambo", "Urus"]);
    });
  });
}
