part of '../flutter_extend.dart';

extension StringFutureExtensions on String {
  /// Copy to Clipboard - Await this to copy selected Text to Clipboard
  Future<void> copyToClipboard() async =>
      await Clipboard.setData(ClipboardData(text: this));
}
