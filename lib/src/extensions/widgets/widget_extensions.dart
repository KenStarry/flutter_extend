import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

extension WidgetExtensions on Widget {
  /// Makes the widget clickable and ensures the mouse cursor changes to a pointer
  /// (hand icon) on the web and desktop platforms.
  ///
  /// This wraps the widget in a [MouseRegion] for cursor control and optionally
  /// adds a [GestureDetector] if an [onTap] callback is provided.
  ///
  /// @param onTap The callback function to execute when the widget is tapped.
  /// @param onHover The callback function when a pointer hovers over the widget.
  /// @param onEnter The callback function when a pointer enters the region.
  /// @param onExit The callback function when a pointer exits the region.
  /// @returns The widget wrapped with mouse region handling.
  ///
  /// Example (Interactive Card):
  /// ```dart
  /// Card(child: Text('Click Me'))
  ///     .clickableMouse(
  ///       onTap: () => print('Tapped!'),
  ///       onHover: (event) => print('Mouse is over!'),
  ///     )
  /// ```
  Widget clickableMouse(
          {VoidCallback? onTap,
          Function(PointerHoverEvent)? onHover,
          Function(PointerEnterEvent)? onEnter,
          Function(PointerExitEvent)? onExit}) =>
      onTap == null
          ? MouseRegion(
              cursor: SystemMouseCursors.click,
              onHover: onHover,
              onEnter: onEnter,
              onExit: onExit,
              child: this,
            )
          : MouseRegion(
              cursor: SystemMouseCursors.click,
              onHover: onHover,
              onEnter: onEnter,
              onExit: onExit,
              child: GestureDetector(
                onTap: onTap,
                child: this,
              ),
            );

  /// Wraps the widget in an [Expanded] widget.
  ///
  /// This forces the widget to fill the available space along the main axis
  /// of a [Row], [Column], or [Flex] widget.
  ///
  /// @param flex The flex factor to control how much space the widget occupies (default: 1).
  /// @returns The widget wrapped in [Expanded].
  ///
  /// Example (Filling Remaining Space):
  /// ```dart
  /// Row(children: [
  ///   Container(width: 50).expanded(), // Takes remaining space
  ///   const Text('Fixed')
  /// ])
  /// ```
  Widget expanded({int flex = 1}) => Expanded(flex: flex, child: this);

  /// Wraps the widget in a [Flexible] widget.
  ///
  /// This allows the widget to size itself based on its content, while still
  /// being constrained by the available space in a [Row], [Column], or [Flex].
  ///
  /// @param flex The flex factor (default: 1).
  /// @param fit The fit of the flexible child (default: [FlexFit.loose]).
  /// @returns The widget wrapped in [Flexible].
  ///
  /// Example (Constrained Growth):
  /// ```dart
  /// Row(children: [
  ///   Container(width: 200).flexible(fit: FlexFit.tight),
  ///   const Text('Hello')
  /// ])
  /// ```
  Widget flexible({int flex = 1, FlexFit fit = FlexFit.loose}) =>
      Flexible(flex: flex, fit: fit, child: this);

  /// Wraps the widget in a [Padding] widget.
  ///
  /// @param padding The [EdgeInsetsGeometry] to apply around the widget (default: [EdgeInsets.all(8)]).
  /// @returns The widget wrapped in [Padding].
  ///
  /// Example (Quick Standard Padding):
  /// ```dart
  /// Text('Title').padding() // Adds 8.0 padding all around
  /// ```
  Widget padding({EdgeInsetsGeometry padding = const EdgeInsets.all(8)}) =>
      Padding(padding: padding, child: this);

  /// Wraps the widget in an [Align] widget.
  ///
  /// Used to position a child within its own bounds.
  ///
  /// @param alignment The alignment to use (default: [Alignment.center]).
  /// @returns The widget wrapped in [Align].
  ///
  /// Example:
  /// ```dart
  /// Container(height: 100, width: 100, child: const Text('Top')).align(alignment: Alignment.topCenter)
  /// ```
  Widget align({AlignmentGeometry alignment = Alignment.center}) =>
      Align(alignment: alignment, child: this);

  /// Wraps the widget in a [ClipRRect] widget to apply rounded corners.
  ///
  /// @param borderRadius The border radius to use for clipping (default: [BorderRadius.zero]).
  /// @returns The widget wrapped in [ClipRRect].
  ///
  /// Example:
  /// ```dart
  /// Image.network('url').clip(borderRadius: BorderRadius.circular(12.0))
  /// ```
  Widget clip({BorderRadiusGeometry borderRadius = BorderRadius.zero}) =>
      ClipRRect(
        borderRadius: borderRadius,
        child: this,
      );

  /// Removes the system scrollbar from a scrollable widget.
  ///
  /// This is often used on desktop platforms where the native scrollbar may be visually distracting.
  ///
  /// @param context The [BuildContext] of the widget to obtain the current [ScrollConfiguration].
  /// @returns The widget wrapped in a [ScrollConfiguration] that disables scrollbars.
  Widget removeScrollbar(BuildContext context) => ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
      child: this);

  /// Ensures a scrollbar is visible for a scrollable widget.
  ///
  /// This is the inverse of [removeScrollbar] and is useful for overriding a
  /// parent's scroll configuration settings.
  ///
  /// @param context The [BuildContext] of the widget to obtain the current [ScrollConfiguration].
  /// @returns The widget wrapped in a [ScrollConfiguration] that enables scrollbars.
  Widget addScrollbar(BuildContext context) => ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: true),
      child: this);

  /// Controls the visibility of the widget without removing it from the tree.
  ///
  /// @param visible If true, the widget is rendered; otherwise, it is hidden.
  /// @returns The widget wrapped in [Visibility].
  Widget visibility({bool visible = true}) =>
      Visibility(visible: visible, child: this);

  /// Hides the widget by setting its visibility to false.
  ///
  /// This is a convenience method equivalent to `visibility(visible: false)`.
  ///
  /// @returns The widget wrapped in [Visibility] set to false.
  Widget invisible() => Visibility(visible: false, child: this);

  /// Ensures the widget is visible (convenience method).
  ///
  /// This is a convenience method equivalent to `visibility(visible: true)`.
  ///
  /// @returns The widget wrapped in [Visibility] set to true.
  Widget visible() => Visibility(visible: true, child: this);

  /// Wraps the widget in a [Center] widget.
  ///
  /// Example:
  /// ```dart
  /// const Text('Centered').center()
  /// ```
  Widget center() => Center(child: this);

  /// Wraps the widget in a [SelectionArea], allowing the user to select and copy text within it.
  ///
  /// This is useful for desktop or web applications where text selection is expected.
  ///
  /// @returns The widget wrapped in [SelectionArea].
  Widget addSelectionArea() => SelectionArea(child: this);
}
