part of '../flutter_extend.dart';

extension FutureExtensions<T> on Future<T> {
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
}
