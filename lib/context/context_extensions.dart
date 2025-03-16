part of '../flutter_extend.dart';

extension ContextExtensions on BuildContext {
  /// Hide Keyboard
  void hideKeyboard() => FocusScope.of(this).unfocus();
}
