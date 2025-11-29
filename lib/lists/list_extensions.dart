part of '../flutter_extend.dart';

extension ListExtensions<T> on List<T> {
  /// Sorts the list **in-place** (mutates the original list) based on a selected property.
  ///
  /// This method uses the standard Dart [sort] function combined with a [selector]
  /// to specify the field or value by which to compare elements.
  ///
  /// @param selector A function that returns a [Comparable] property (e.g., int, String, DateTime)
  ///                 from each element [T].
  /// @param ascending If true (default), sorts from smallest to largest; otherwise, largest to smallest.
  ///
  /// Example:
  /// ```dart
  /// class User { final String name; final int score; ... }
  /// final users = [User('B', 10), User('A', 20)];
  ///
  /// // Sorts by score in ascending order (10, 20)
  /// users.sortBy((user) => user.score);
  ///
  /// // Sorts by name in descending order ('B', 'A')
  /// users.sortBy((user) => user.name, ascending: false);
  /// ```
  void sortBy(Comparable Function(T) selector, {bool ascending = true}) {
    sort((a, b) {
      final keyA = selector(a);
      final keyB = selector(b);

      final comparison = keyA.compareTo(keyB);
      return ascending ? comparison : -comparison;
    });
  }

  /// Sorts the list based on a selected property and returns a **new sorted list**.
  ///
  /// The original list remains unchanged. This is useful when you need to display
  /// sorted data without modifying the source state.
  ///
  /// @param selector A function that returns a [Comparable] property from each element [T].
  /// @param ascending If true (default), sorts from smallest to largest; otherwise, largest to smallest.
  /// @returns A new [List<T>] instance containing the sorted elements.
  ///
  /// Example:
  /// ```dart
  /// final originalScores = [10, 50, 20];
  /// final topScores = originalScores.sortByAndReturnSorted((s) => s, ascending: false);
  /// // originalScores is still [10, 50, 20]; topScores is [50, 20, 10].
  /// ```
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

  /// Returns a shuffled copy of the original list.
  ///
  /// This uses the Fisher-Yates shuffle algorithm on a copy, ensuring the
  /// original list is not modified.
  ///
  /// @returns A new [List<T>] instance with elements in random order.
  ///
  /// Example:
  /// ```dart
  /// final deck = ['A', 'K', 'Q', 'J'];
  /// final shuffledDeck = deck.shuffled(); // e.g., ['Q', 'J', 'A', 'K']
  /// ```
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

  /// Splits the list into smaller sub-lists (chunks) of a maximum specified size.
  ///
  /// This is highly useful for pagination, batch processing, or creating multi-column
  /// layouts (e.g., using [Wrap] or [GridView]).
  ///
  /// @param chunkSize The maximum size for each chunk. Must be greater than 0.
  /// @returns A [List] of [List<T>]. The last chunk may be smaller than [chunkSize].
  ///
  /// Example:
  /// ```dart
  /// final items = [1, 2, 3, 4, 5, 6, 7];
  /// final chunks = items.chunked(3);
  /// // chunks is [[1, 2, 3], [4, 5, 6], [7]]
  /// ```
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
