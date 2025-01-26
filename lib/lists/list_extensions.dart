part of '../flutter_extend.dart';

extension ListExtensions<T> on List<T> {
  /// Gets the First Element of a list or null if the list is empty
  T? firstOrNull() => isNotEmpty ? first : null;

  /// Gets the Last Element of a list or null if the list is empty
  T? lastOrNull() => isNotEmpty ? last : null;

  /// Sort a List - Doesn't return the sorted list
  void sortBy(Comparable Function(T) selector, {bool ascending = true}) {
    sort((a, b) {
      final keyA = selector(a);
      final keyB = selector(b);

      final comparison = keyA.compareTo(keyB);
      return ascending ? comparison : -comparison;
    });
  }

  /// Sort and Return the Sorted List
  List<T> sortByAndReturnSorted(Comparable Function(T) selector,
      {bool ascending = true}) {
    final sortedList = List<T>.from(this);

    sortedList.sort((a, b) {
      final keyA = selector(a);
      final keyB = selector(b);

      final comparison = keyA.compareTo(keyB);
      return ascending ? comparison : -comparison;
    });

    return sortedList;
  }

  /// Shuffle Copy - Returns a shuffled copy of the original list
  List<T> shuffled() {
    final copy = [...this];
    final random = Random();

    for (var i = copy.length - 1; i > 0; i--) {
      final j = random.nextInt(i + 1);
      final temp = copy[i];
      copy[i] = copy[j];
      copy[j] = temp;
    }

    return copy;
  }

  /// Splits The List into chunks of different sizes
  List<List<T>> chunked(int chunkSize) {
    if (chunkSize <= 0) {
      throw ArgumentError("Chunk Size must be greater than 0");
    }

    return [
      for (var i = 0; i < length; i += chunkSize)
        sublist(i, (i + chunkSize).clamp(0, length))
    ];
  }
}
