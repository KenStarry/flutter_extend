import 'dart:async';

extension FutureExtensions<T> on Future<T> {
  /// Wraps this [Future] inside a [Completer].
  ///
  /// This is an internal utility method primarily used to easily get the
  /// completion state of the Future or handle its result within another
  /// Future/Stream flow.
  ///
  /// The [Completer] immediately handles both the success (`.then()`) and
  /// error (`.catchError()`) states of the original Future.
  ///
  /// @returns A [Completer<T>] object associated with this Future's outcome.
  Completer<T> wrapInCompleter() {
    final completer = Completer<T>();

    then(completer.complete).catchError(completer.completeError);
    return completer;
  }

  /// Checks if the Future has completed (either successfully or with an error).
  ///
  /// **Note:** Because this relies on [wrapInCompleter()], it executes the Future's
  /// logic if it hasn't started yet. This is primarily useful for status tracking
  /// within asynchronous flows.
  ///
  /// @returns True if the Future has finished executing.
  ///
  /// Example:
  /// ```dart
  /// final myFuture = Future.delayed(Duration(seconds: 2), () => 42);
  /// print(myFuture.isComplete()); // false (initially)
  /// ```
  bool isComplete() => wrapInCompleter().isCompleted;

  /// Retries the execution of this [Future] a specified number of times upon failure.
  ///
  /// This is vital for network calls that may fail due to transient errors.
  /// Execution stops and the function returns immediately upon the first success.
  ///
  /// @param retries The total number of attempts to make.
  /// @param delay The duration to wait between failed attempts (default: none).
  /// @returns A [Future] that resolves with the successful result, or throws
  ///          the final error after all retries have failed.
  ///
  /// Example:
  /// ```dart
  /// // Retries the network call up to 3 times, waiting 1 second between attempts.
  /// final data = await fetchUserData().retry(3, delay: 1.seconds);
  /// ```
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

  /// Sets a timeout for the Future and provides a [fallbackValue] if the timeout expires.
  ///
  /// This prevents the application from hanging indefinitely if an asynchronous
  /// operation fails to complete in time.
  ///
  /// @param timeout The maximum duration to wait for the Future to complete.
  /// @param fallbackValue The value to return if the Future times out.
  /// @returns The result of the Future, or [fallbackValue] if the timeout is reached.
  ///
  /// Example:
  /// ```dart
  /// // Returns 0 if the computation takes longer than 5 seconds.
  /// final result = await complexCalculation().timeoutWithFallback(
  ///   Duration(seconds: 5), 0
  /// );
  /// ```
  Future<T> timeoutWithFallback(Duration timeout, T fallbackValue) =>
      this.timeout(timeout, onTimeout: () => fallbackValue);

  /// Waits for a specified [delay] before starting the execution of this Future.
  ///
  /// This is primarily useful for simulating network latency in a development
  /// environment without modifying the original asynchronous function.
  ///
  /// @param delay The duration to wait before execution begins.
  /// @returns The result of the Future after the delay.
  ///
  /// Example:
  /// ```dart
  /// // Simulate a slow network with a 2-second minimum delay.
  /// final data = await fetchSettings().runAfterDelay(Duration(seconds: 2));
  /// ```
  Future<T> runAfterDelay(Duration delay) async {
    await Future.delayed(delay);
    return await this;
  }
}
