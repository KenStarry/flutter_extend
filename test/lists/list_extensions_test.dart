import 'package:flutter_extend/flutter_extend.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Sort By (Does not return the list)', () {
    test('Return sorted list after invoking the sortBy method', () {
      final cars = ["Urus", "BMW", "Aston Martin", "Ferari", "Lambo"];
      cars.sortBy((car) => car);

      expect(cars, ["Aston Martin", "BMW", "Ferari", "Lambo", "Urus"]);
    });
  });

  group('Sort By (Returns the list)', () {
    test('Return sorted list after invoking the sortBy method', () {
      final cars = ["Urus", "BMW", "Aston Martin", "Ferari", "Lambo"]
          .sortByAndReturnSorted(((car) => car));

      expect(cars, ["Aston Martin", "BMW", "Ferari", "Lambo", "Urus"]);
    });
  });

  group('Chunked Lists', () {
    test('Return chunked list after invoking the sortBy method', () {
      final cars =
          ["Urus", "BMW", "Aston Martin", "Ferari", "Lambo"].chunked(2);

      expect(cars, [
        ['Urus', 'BMW'],
        ['Aston Martin', 'Ferari'],
        ['Lambo']
      ]);
    });
  });
}
