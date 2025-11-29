part of '../flutter_extend.dart';

extension ListAccessExtensions<T> on List<T> {
  /// Gets the First Element of a list or null if the list is empty
  T? get firstOrNull => isNotEmpty ? first : null;

  /// Gets the Last Element of a list or null if the list is empty
  T? get lastOrNull => isNotEmpty ? last : null;

  /// Safely retrieves an element at a given [index],
  /// returning null if the index is out of bounds.
  T? elementAtOrNull(int index) {
    if (index >= 0 && index < length) {
      return this[index];
    }

    return null;
  }

  /// Gets the first element that satisfies the [test], or null if none is found.
  T? firstWhereOrNull(bool Function(T) test) {
    for (var item in this) {
      if (test(item)) {
        return item;
      }
    }

    return null;
  }
}
