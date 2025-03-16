part of '../flutter_extend.dart';

extension MediaQueryContextExtensions on BuildContext {
  /// Get Screen Size
  Size get screenSize => MediaQuery.sizeOf(this);

  /// Get Screen Width
  double get screenWidth => MediaQuery.sizeOf(this).width;

  /// Get Screen Height
  double get screenHeight => MediaQuery.sizeOf(this).height;
}
