part of '../flutter_extend.dart';

extension ListAccessExtensions<T> on List<T> {
  /// Gets the first element of a list, or returns null if the list is empty.
  ///
  /// This prevents the [StateError] that is thrown when accessing the standard
  /// [List.first] property on an empty list.
  ///
  /// @returns The first element of type [T], or null.
  ///
  /// Example:
  /// ```dart
  /// final numbers = [1, 2, 3];
  /// final empty = [];
  ///
  /// final first = numbers.firstOrNull; // 1
  /// final result = empty.firstOrNull;  // null
  /// ```
  T? get firstOrNull => isNotEmpty ? first : null;

  /// Gets the last element of a list, or returns null if the list is empty.
  ///
  /// This prevents the [StateError] that is thrown when accessing the standard
  /// [List.last] property on an empty list.
  ///
  /// @returns The last element of type [T], or null.
  ///
  /// Example:
  /// ```dart
  /// final names = ['Alice', 'Bob'];
  /// final last = names.lastOrNull; // 'Bob'
  /// ```
  T? get lastOrNull => isNotEmpty ? last : null;

  /// Gets the index of the [element], or returns null if the element doesn't exist in the list.
  ///
  /// This provides a more idiomatic way to check for element existence and position
  /// compared to checking if [List.indexOf] returns -1.
  ///
  /// @param element The element to locate in the list.
  /// @returns The index of the element if found, or null.
  ///
  /// Example:
  /// ```dart
  /// final ids = [10, 20, 30];
  /// final index = ids.indexOfOrNull(20); // 1
  /// final notFound = ids.indexOfOrNull(50); // null
  /// ```
  int? indexOfOrNull(T element) {
    final index = indexOf(element);
    return index != -1 ? index : null;
  }

  /// Safely retrieves an element at a given [index],
  /// returning null if the index is out of bounds (negative or >= length).
  ///
  /// This prevents the [RangeError] that is thrown when accessing an index
  /// outside the list's valid range using `list[index]`.
  ///
  /// @param index The zero-based index of the element to retrieve.
  /// @returns The element of type [T] at the index, or null.
  ///
  /// Example:
  /// ```dart
  /// final data = ['a', 'b', 'c'];
  /// final item = data.elementAtOrNull(1); // 'b'
  /// final safe = data.elementAtOrNull(10); // null
  /// ```
  T? elementAtOrNull(int index) {
    if (index >= 0 && index < length) {
      return this[index];
    }

    return null;
  }

  /// Gets the first element that satisfies the [test], or returns null if none is found.
  ///
  /// This prevents the [StateError] that is thrown when using the standard
  /// [List.firstWhere] method without providing an `orElse` callback.
  ///
  /// @param test A function that returns true for the element you are looking for.
  /// @returns The first element that satisfies the test, or null.
  ///
  /// Example:
  /// ```dart
  /// final users = [{id: 1, admin: true}, {id: 2, admin: false}];
  /// final admin = users.firstWhereOrNull((u) => u['admin'] == true); // {id: 1, ...}
  /// final missing = users.firstWhereOrNull((u) => u['id'] == 99);   // null
  /// ```
  T? firstWhereOrNull(bool Function(T) test) {
    for (var item in this) {
      if (test(item)) {
        return item;
      }
    }

    return null;
  }
}
