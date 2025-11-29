part of '../flutter_extend.dart';

extension ContextExtensions on BuildContext {
  /// Dismisses the software keyboard from the screen.
  ///
  /// This finds the current [FocusScope] associated with the [BuildContext]
  /// and calls [unfocus()] to dismiss the keyboard and clear the input focus
  /// from any text fields.
  ///
  /// Example:
  /// ```dart
  /// ElevatedButton(
  ///   onPressed: () {
  ///     // Dismiss the keyboard before processing the login form
  ///     context.hideKeyboard();
  ///     // ... proceed with form submission
  ///   },
  ///   child: const Text('Submit'),
  /// )
  /// ```
  void hideKeyboard() => FocusScope.of(this).unfocus();

  /// Performs a [setState] operation only if the current widget is still mounted.
  ///
  /// This prevents calling [setState] on a widget that has already been disposed,
  /// which often happens after an asynchronous call completes (e.g., fetching data)
  /// and can lead to runtime errors in development mode.
  ///
  /// @param callback The function containing the state changes to apply (e.g., setting a loading flag).
  ///
  /// Example (in a [State] class):
  /// ```dart
  /// Future<void> fetchData() async {
  ///   final data = await someAsyncFunction();
  ///
  ///   // setState is only called if the widget is still on the screen
  ///   context.safeSetState(() {
  ///     _data = data;
  ///     _isLoading = false;
  ///   });
  /// }
  /// ```
  void safeSetState(VoidCallback callback) {
    if (mounted) {
      callback();
    }
  }
}
