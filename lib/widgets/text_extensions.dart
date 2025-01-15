part of '../flutter_extend.dart';

extension TextExtensions on Text {
  /// Add Hyperlinks to text
  Text xAddHyperLinks(
      {required List<String> hyperLinkTexts,
      bool showUnderline = true,
      bool makeBold = false,
      Color? hyperLinkColor,
      Function(String word)? onHyperlinkClicked}) {
    final originalString = data;
    final originalStringArray = originalString?.split(' ');

    final text = Text.rich(TextSpan(
            children: originalStringArray
                ?.map((word) => TextSpan(
                    text: '$word ',
                    recognizer: !hyperLinkTexts.contains(word)
                        ? null
                        : TapGestureRecognizer()
                      ?..onTap = () => onHyperlinkClicked!(word),
                    style: hyperLinkTexts.contains(word)
                        ? TextStyle(
                            decoration:
                                showUnderline ? TextDecoration.underline : null,
                            fontSize: style?.fontSize,
                            fontFamily: style?.fontFamily,
                            fontStyle: style?.fontStyle,
                            fontWeight:
                                makeBold ? FontWeight.w800 : style?.fontWeight,
                            color: hyperLinkColor ?? Colors.blue)
                        : style))
                .toList()));

    return text;
  }

  /// Add Text Marquee
}
