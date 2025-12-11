part of '../flutter_extend.dart';

extension TextExtensions on Text {
  /// Converts specific words within the text into clickable hyperlinks.
  ///
  /// This method works by rebuilding the original [Text] widget as a [Text.rich]
  /// widget, splitting the text by spaces, and wrapping the specified words
  /// ([hyperLinkTexts]) with a [TapGestureRecognizer].
  ///
  /// **NOTE:** This only detects and links whole words separated by spaces. Punctuation
  /// attached to a word (e.g., "word.") will prevent detection unless included in
  /// the [hyperLinkTexts] list.
  ///
  /// @param hyperLinkTexts A list of strings (words) that should be converted into clickable links.
  /// @param showUnderline If true, adds a text decoration underline (default: true).
  /// @param makeBold If true, increases the font weight of the link (default: false).
  /// @param hyperLinkColor The color of the clickable link text (default: [Colors.blue]).
  /// @param onHyperlinkClicked The callback function to execute when a linked word is tapped.
  ///                           The tapped word is passed as an argument.
  /// @returns A new [Text] widget wrapped in [Text.rich] with interactive spans.
  ///
  /// Example:
  /// ```dart
  /// final poem = const Text('Click here to learn more.');
  ///
  /// return poem.addHyperLinks(
  ///   hyperLinkTexts: ['Click', 'here'],
  ///   hyperLinkColor: Colors.purple,
  ///   makeBold: true,
  ///   onHyperlinkClicked: (word) {
  ///     print('User clicked the word: $word');
  ///     // Navigate or show dialog based on the word
  ///   },
  /// );
  /// ```
  Text addHyperLinks(
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
}
