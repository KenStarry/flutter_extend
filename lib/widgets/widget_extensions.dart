part of '../flutter_extend.dart';

extension WidgetExtensions on Widget {
  /// Add Padding to Widget
  Widget padding({EdgeInsetsGeometry padding = const EdgeInsets.all(8)}) =>
      Padding(padding: padding, child: this);

  /// Align Items depending on Geometry
  Widget align({AlignmentGeometry alignment = Alignment.center}) =>
      Align(alignment: alignment, child: this);
}
