part of '../flutter_extend.dart';

extension FocusContextExtensions on BuildContext {
  /// Retrieves the [FocusScopeNode] for the current context.
  ///
  /// The [FocusScopeNode] is the central component for managing the focus
  /// order within a subtree of widgets. Use this to manually control focus
  /// flow or inspect the current focus state.
  ///
  /// @returns The current [FocusScopeNode] instance.
  FocusScopeNode get focusScope => FocusScope.of(this);

  /// Moves the focus to the next focusable widget in the defined traversal order.
  ///
  /// This is typically used in form submissions or on the completion of a
  /// text field to automatically move the cursor to the subsequent input field.
  ///
  /// Example:
  /// ```dart
  /// // Call context.nextFocus() from inside an onChanged or onSubmitted callback
  /// TextField(
  ///   onSubmitted: (_) => context.nextFocus(),
  ///   decoration: const InputDecoration(labelText: 'Username'),
  /// ),
  /// ```
  void nextFocus() => focusScope.nextFocus();

  /// Moves the focus to the previous focusable widget in the defined traversal order.
  ///
  /// This can be useful for implementing "Previous" navigation logic in forms.
  void prevFocus() => focusScope.previousFocus();

  /// Requests focus for a specific [FocusNode].
  ///
  /// This is used when you need to jump focus to a non-sequential field,
  /// typically managed by a variable reference to a [FocusNode].
  ///
  /// @param focusNode The [FocusNode] to which focus should be transferred.
  ///
  /// Example:
  /// ```dart
  /// final specificNode = FocusNode();
  ///
  /// // ... later, when you want to focus it:
  /// context.requestFocus(specificNode);
  /// ```
  void requestFocus(FocusNode focusNode) => focusScope.requestFocus(focusNode);

  /// Dismisses the software keyboard and removes the focus from any active text field.
  ///
  /// This is an essential utility for improving user experience when a form
  /// is submitted or a button is pressed.
  ///
  /// Example:
  /// ```dart
  /// ElevatedButton(
  ///   onPressed: () {
  ///     context.unFocus();
  ///     // ... proceed with logic after ensuring keyboard is gone
  ///   },
  ///   child: const Text('Done'),
  /// )
  /// ```
  void unFocus() => FocusScope.of(this).unfocus();
}
