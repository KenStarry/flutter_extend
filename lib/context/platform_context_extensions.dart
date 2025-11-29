part of '../flutter_extend.dart';

extension PlatformContextExtensions on BuildContext {
  bool get isIOS => Platform.isIOS;

  bool get isAndroid => Platform.isAndroid;

  bool get isWindows => Platform.isWindows;

  bool get isMacOS => Platform.isMacOS;

  bool get isLinux => Platform.isLinux;

  bool get isFuchsia => Platform.isFuchsia;

  bool get isMobile => isAndroid || isIOS;

  bool get isDesktop => isWindows || isLinux || isMacOS;
}
