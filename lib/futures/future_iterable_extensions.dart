part of '../flutter_extend.dart';

extension FutureIterableExtensions<T> on Iterable<Future<T>> {
  /// Run multiple Futures with a limit
  Future<List<T>> runWithLimit(int limit) async {
    final results = <T>[];
    final pool = <Future<T>>[];

    for (var future in this) {
      if (pool.length >= limit) {
        results.add(await Future.any(pool));
        pool.removeWhere((f) => f.isComplete);
      }

      pool.add(future);
    }

    results.addAll(await Future.wait(pool));
    return results;
  }
}
