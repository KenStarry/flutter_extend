part of '../flutter_extend.dart';

extension ScaffoldExtensions on Scaffold {
  /// Add Annotated region for the status bar
  Widget addAnnotatedRegion(
      {Color? statusBarColor,
      Brightness? statusBarBrightness,
      Color? navigationBarColor,
      Brightness? navigationBarBrightness}) {
    return AnnotatedRegion(
        value: SystemUiOverlayStyle(
            statusBarColor: statusBarColor,
            statusBarBrightness: statusBarBrightness,
            systemNavigationBarColor: navigationBarColor,
            systemNavigationBarIconBrightness: navigationBarBrightness),
        child: this);
  }
}
