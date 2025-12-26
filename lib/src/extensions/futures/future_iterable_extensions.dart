import 'dart:async';

import 'package:flutter_extend/src/extensions/futures/future_extensions.dart';

extension FutureIterableExtensions<T> on Iterable<Future<T>> {
  /// Executes multiple [Future]s concurrently with a specified maximum [limit].
  ///
  /// This method prioritizes **throughput over order**. It launches up to [limit]
  /// Futures simultaneously. When one Future completes, its result is immediately
  /// added to the result list, and a new Future is launched.
  ///
  /// **NOTE:** The order of the results in the returned [List] is determined by
  /// the completion time of the Futures, and is NOT guaranteed to match the
  /// order of the input [Iterable].
  ///
  /// @param limit The maximum number of Futures to run simultaneously.
  /// @returns A [Future] that completes with a list of results, ordered by completion time.
  ///
  /// Example:
  /// ```dart
  /// final futures = [fetch1(), fetch2(), fetch3(), fetch4()];
  /// // Runs 2 at a time. If fetch2 finishes before fetch1, results will be [result2, result1, ...].
  /// final results = await futures.runWithLimit(2);
  /// ```
  Future<List<T>> runWithLimit(int limit) async {
    final results = <T>[];
    final pool = <Future<T>>[];

    for (var future in this) {
      if (pool.length >= limit) {
        results.add(await Future.any(pool));
        pool.removeWhere((f) => f.isComplete());
      }

      pool.add(future);
    }

    results.addAll(await Future.wait(pool));
    return results;
  }

  /// Executes multiple [Future]s concurrently with a specified maximum [limit],
  /// while preserving the order of the input iterable.
  ///
  /// This method is more complex as it uses an intermediate list to store results
  /// based on their original index, ensuring that the final list order is correct.
  ///
  /// **NOTE:** The final list is always guaranteed to match the order of the original input.
  ///
  /// @param limit The maximum number of Futures to run simultaneously.
  /// @returns A [Future] that completes with a list of results, guaranteed to be
  ///          in the original order.
  ///
  /// Example:
  /// ```dart
  /// final futures = [fetchUser(1), fetchUser(2), fetchUser(3)];
  /// // Runs 2 at a time, but final result order is always [result1, result2, result3].
  /// final results = await futures.runWithLimitOrdered(2);
  /// ```
  Future<List<T>> runWithLimitOrdered(int limit) async {
    final results = List<T?>.filled(length, null);
    final futures = toList();
    final active = <Future<void>>[];

    for (int i = 0; i < futures.length; i++) {
      final future = futures[i].then((value) {
        results[i] = value;
      });

      active.add(future);

      if (active.length >= limit) {
        await Future.any(active);
        active.removeWhere((f) => f.isComplete());
      }
    }

    await Future.wait(active);
    return results.cast<T>();
  }
}
