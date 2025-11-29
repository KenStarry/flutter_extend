part of '../flutter_extend.dart';

extension ListTransformExtensions<T> on List<T> {

  /// Returns a new [List<T>] containing the elements of the original list in reverse order.
  ///
  /// This is a convenience getter that immediately converts the result of the built-in
  /// [List.reversed] iterable into a concrete list.
  ///
  /// @returns A new [List] instance with elements in reversed order.
  ///
  /// Example:
  /// ```dart
  /// final original = [1, 2, 3];
  /// final reversed = original.reversedList; // [3, 2, 1]
  /// ```
  List<T> get reversedList => reversed.toList();

  /// Maps the list, providing the element's **index** along with the **item** to the mapper function.
  ///
  /// This is highly useful when generating indexed widgets (e.g., in a [ListView.builder]
  /// context) or needing to access the item's position during transformation.
  ///
  /// @param mapper A function that accepts the `index` (int) and the `item` ([T]),
  ///               and returns a new value of type [R].
  /// @returns A new [List<R>] containing the transformed elements.
  ///
  /// Example:
  /// ```dart
  /// final names = ['Alice', 'Bob', 'Charlie'];
  /// final indexedWidgets = names.mapIndexed((i, name) {
  ///   return Text('No. $i: $name');
  /// }).toList();
  /// // indexedWidgets is List<Text>
  /// ```
  List<R> mapIndexed<R>(R Function(int index, T item) mapper) {
    final result = <R>[];

    for (var i = 0; i < length; i++) {
      result.add(mapper(i, this[i]));
    }

    return result;
  }

  /// Maps the list using the provided [mapper] function and filters out all resulting null values.
  ///
  /// This is functionally equivalent to calling `list.map(...).whereType<R>()` but is more concise
  /// and performs the check during the mapping process.
  ///
  /// @param mapper A function that transforms the item [T] into a potentially nullable value [R?].
  /// @returns A new non-nullable [List<R>] containing only the successfully mapped elements.
  ///
  /// Example:
  /// ```dart
  /// final grades = [85, 40, 92, 20];
  ///
  /// // Only returns grades that passed (>= 50), filtered into a List<int>.
  /// final passingGrades = grades.mapNotNull((g) => g >= 50 ? g : null);
  /// // passingGrades is [85, 92]
  /// ```
  List<R> mapNotNull<R>(R? Function(T item) mapper) {
    final result = <R>[];

    for (var item in this) {
      final mappedItem = mapper(item);
      if (mappedItem != null) {
        result.add(mappedItem);
      }
    }

    return result;
  }
}
