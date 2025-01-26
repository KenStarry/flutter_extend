part of '../flutter_extend.dart';

extension WidgetExtensions on Widget {
  /// Adds a click event to a Widget that, if on the web, will show a mouse pointer
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

  /// Add Expanded
  Widget expanded({int flex = 1}) => Expanded(flex: flex, child: this);

  /// Add Flexible
  Widget flexibe({int flex = 1, FlexFit fit = FlexFit.loose}) =>
      Flexible(flex: flex, fit: fit, child: this);

  /// Add Padding to Widget
  Widget padding({EdgeInsetsGeometry padding = const EdgeInsets.all(8)}) =>
      Padding(padding: padding, child: this);

  /// Align Items depending on Geometry
  Widget align({AlignmentGeometry alignment = Alignment.center}) =>
      Align(alignment: alignment, child: this);

  /// Clip a widget
  Widget clip({BorderRadiusGeometry borderRadius = BorderRadius.zero}) =>
      ClipRRect(
        borderRadius: borderRadius,
        child: this,
      );

  /// Remove Scrollbar from Scrollable widgets
  Widget removeScrollbar(BuildContext context) => ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
      child: this);

  /// Add Scrollbar to Scrollable widgets
  Widget addScrollbar(BuildContext context) => ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: true),
      child: this);

  /// Visibility
  Widget visibility({bool visible = true}) =>
      Visibility(visible: visible, child: this);

  /// Invinsible
  Widget invinsible() => Visibility(visible: false, child: this);

  /// Visible
  Widget visible() => Visibility(visible: true, child: this);

  /// Center a widget
  Widget center() => Center(child: this);
}
