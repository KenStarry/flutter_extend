part of '../flutter_extend.dart';

extension FocusContextExtensions on BuildContext {

  /// Get Current Focus node
  FocusScopeNode get focusScope => FocusScope.of(this);

  /// Next Focus
  void nextFocus() => focusScope.nextFocus();

  /// Prev Focus
  void prevFocus() => focusScope.previousFocus();

  /// Request Focus from a [FocusNode]
  void requestFocus(FocusNode focusNode) => focusScope.requestFocus(focusNode);

  /// Dismiss the Keyboard and removes the focus from active text fields
  void unFocus() => FocusScope.of(this).unfocus();
}