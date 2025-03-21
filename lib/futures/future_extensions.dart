part of '../flutter_extend.dart';

extension FutureExtensions<T> on Future<T> {
  /// Wrap a Future in a Completer
  Completer<T> wrapInCompleter() {
    final completer = Completer<T>();

    then(completer.complete).catchError(completer.completeError);
    return completer;
  }

  /// Check if Future is Complete
  bool isComplete() => wrapInCompleter().isCompleted;

  /// Retry a Future - Retry Futures such as network calls etc.
  Future<T> retry(int retries, {Duration delay = Duration.zero}) async {
    for (int attempt = 0; attempt < retries; attempt++) {
      try {
        return await this;
      } catch (error) {
        if (attempt == retries - 1) rethrow;
        if (delay != Duration.zero) await Future.delayed(delay);
      }
    }
    throw Exception('Failed after $retries retries');
  }

  /// Future Timeout - Stop waiting for this future after a timeout is complete
  Future<T> timeoutWithFallback(Duration timeout, T fallbackValue) =>
      this.timeout(timeout, onTimeout: () => fallbackValue);

  /// Run with a delay - Run Future after a delay
  Future<T> runAfterDelay(Duration delay) async {
    await Future.delayed(delay);
    return await this;
  }
}
