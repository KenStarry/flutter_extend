part of '../flutter_extend.dart';

extension StringFutureExtensions on String {
  /// Copies the content of this string to the system clipboard.
  ///
  /// This method is an asynchronous wrapper for [Clipboard.setData] and must be awaited.
  ///
  /// @returns A [Future<void>] that completes when the data has been successfully
  ///          copied to the clipboard.
  ///
  /// Example:
  /// ```dart
  /// ElevatedButton(
  ///   onPressed: () async {
  ///     const secretCode = 'ABC-123-XYZ';
  ///     await secretCode.copyToClipboard();
  ///     // Optional: Show a SnackBar notification after successful copy
  ///     ScaffoldMessenger.of(context).showSnackBar(
  ///       const SnackBar(content: Text('Code copied to clipboard!')),
  ///     );
  ///   },
  ///   child: const Text('Copy Code'),
  /// )
  /// ```
  Future<void> copyToClipboard() async =>
      await Clipboard.setData(ClipboardData(text: this));
}
