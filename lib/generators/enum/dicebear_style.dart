part of '../../flutter_extend.dart';

enum DiceBearStyle {
  adventurer,
  adventurerNeutral,
  avataaars,
  avataaarsNeutral,
  bigEars,
  bigEarsNeutral,
  bigSmile,
  bottts,
  botttsNeutral,
  croodles,
  croodlesNeutral,
  dylan,
  funEmoji,
  glass,
  icons,
  identicon,
  initials,
  lorelei,
  loreleiNeutral,
  micah,
  miniavs,
  notionists,
  notionistsNeutral,
  openPeeps,
  personas,
  pixelArt,
  pixelArtNeutral,
  rings,
  shapes,
  thumbs;

  /// Converts the enum to the API-friendly string format (kebab-case).
  String get _apiName {
    // Converts "adventurerNeutral" -> "adventurer-neutral"
    return name.replaceAllMapped(
        RegExp(r'(?<!^)(?=[A-Z])'),
            (match) => '-${match.group(0)}'
    ).toLowerCase();
  }
}