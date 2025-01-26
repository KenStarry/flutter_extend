part of '../flutter_extend.dart';

extension FutureIterableExtensions<T> on Iterable<Future<T>> {
  /// Run multiple Futures with a limit
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

  /// Run multiple futures with a limit (Order Preserved)
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
