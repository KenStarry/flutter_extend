part of '../flutter_extend.dart';

extension ContextExtensions on BuildContext {
  /// Hide Keyboard
  void hideKeyboard() => FocusScope.of(this).unfocus();

  /// Perform Safe SetState operations by Checking whether the widget is disposed
  void performSafeSetState(VoidCallback callback) {
    if (mounted) {
      callback();
    }
  }
}
