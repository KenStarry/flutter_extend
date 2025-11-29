part of '../../flutter_extend.dart';

enum DiceBearImageType {
  png,
  svg;

  String get label => switch (this) {
        DiceBearImageType.png => 'png',
        DiceBearImageType.svg => 'svg',
      };
}
