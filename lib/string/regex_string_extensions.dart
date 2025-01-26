extension RegexStringExtensions on String {
  /// Extract All Digits From a String
  String extractDigits() => replaceAll(RegExp(r'\D'), '');

  /// Remove All Digits From Text
  String removeAllDigits() => replaceAll(RegExp(r'\d'), '');

  /// Remove All Digits From Text
  String removeAllWordsStartingWithNumber() =>
      replaceAll(RegExp(r'\b\d+\w+\b'), '')
          .replaceAll(RegExp(r'\s{2,}'), ' ')
          .trim();

  /// Check if String contains only Digits
  bool isDigitsOnly() => RegExp(r'^\d+$').hasMatch(this);

  /// Check if String contains only text
  bool isTextOnly() => RegExp(r'^[a-zA-Z]+$').hasMatch(this);

  /// Check if String is a valid URL
  // bool isValidURL() => RegExp(r'')

  /// Remove all White Spaces
  String removeAllWhiteSpaces() => replaceAll(RegExp(r'\s+'), '');

  /// Get Words from a String
  List<String> getWords() => RegExp(r'\b\w+\b')
      .allMatches(this)
      .map((match) => match.group(0)!)
      .toList();
}
