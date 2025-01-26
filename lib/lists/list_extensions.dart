part of '../flutter_extend.dart';

extension ListExtensions<T> on List<T> {
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
  List<T> sortByAndReturnSorted(Comparable Function(T) selector, {bool ascending = true}) {

    final sortedList = List<T>.from(this);

    sortedList.sort((a, b) {
      final keyA = selector(a);
      final keyB = selector(b);

      final comparison = keyA.compareTo(keyB);
      return ascending ? comparison : -comparison;
    });


    return sortedList;
  }
}