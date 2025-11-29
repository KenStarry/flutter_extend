extension RegexStringExtensions on String {
  /// Extracts all numerical digits from the string and returns them as a new string.
  ///
  /// All non-digit characters (including letters, symbols, and spaces) are removed.
  ///
  /// @returns A new string containing only the digits.
  ///
  /// Example:
  /// ```dart
  /// final messy = 'Price: $12.99 USD';
  /// print(messy.extractDigits()); // "1299"
  /// ```
  String extractDigits() => replaceAll(RegExp(r'\D'), '');

  /// Removes all numerical digits (0-9) from the string.
  ///
  /// @returns A new string with all digits removed.
  ///
  /// Example:
  /// ```dart
  /// final mixed = 'Address line 123 Street 4';
  /// print(mixed.removeAllDigits()); // "Address line  Street "
  /// ```
  String removeAllDigits() => replaceAll(RegExp(r'\d'), '');

  /// Removes all words that begin with a number (e.g., '3rd', '10users', '4u').
  ///
  /// This is often used for cleaning up raw input that mixes labels and text.
  /// Multiple spaces resulting from the removal are reduced to a single space,
  /// and leading/trailing spaces are trimmed.
  ///
  /// @returns A new string with number-starting words and extra spaces removed.
  ///
  /// Example:
  /// ```dart
  /// final input = '10users 3rd place is here 54.';
  /// print(input.removeAllWordsStartingWithNumber()); // "place is here 54."
  /// ```
  String removeAllWordsStartingWithNumber() =>
      replaceAll(RegExp(r'\b\d+\w+\b'), '')
          .replaceAll(RegExp(r'\s{2,}'), ' ')
          .trim();

  /// Checks if the entire string consists only of numerical digits (0-9).
  ///
  /// @returns True if the string contains one or more digits and no other characters (including spaces).
  ///
  /// Example:
  /// ```dart
  /// print('12345'.isDigitsOnly());   // true
  /// print('123 a'.isDigitsOnly());   // false
  /// ```
  bool isDigitsOnly() => RegExp(r'^\d+$').hasMatch(this);

  /// Checks if the entire string consists only of alphabet letters (a-z, A-Z).
  ///
  /// @returns True if the string contains only letters and is not empty.
  ///
  /// Example:
  /// ```dart
  /// print('Flutter'.isTextOnly());    // true
  /// print('Flutter Dev'.isTextOnly()); // false (contains space)
  /// print('123'.isTextOnly());         // false
  /// ```
  bool isTextOnly() => RegExp(r'^[a-zA-Z]+$').hasMatch(this);

  /// Removes all whitespace characters (spaces, tabs, newlines) from the string.
  ///
  /// @returns A new string with all whitespace removed.
  ///
  /// Example:
  /// ```dart
  /// final long = 'one two\nthree';
  /// print(long.removeAllWhiteSpaces()); // "onetwothree"
  /// ```
  String removeAllWhiteSpaces() => replaceAll(RegExp(r'\s+'), '');

  /// Extracts all individual words from the string based on word boundaries.
  ///
  /// This is useful for natural language processing or extracting keywords.
  ///
  /// @returns A [List<String>] containing all the words found.
  ///
  /// Example:
  /// ```dart
  /// final sentence = 'The Flutter app is amazing!';
  /// print(sentence.getWords()); // ["The", "Flutter", "app", "is", "amazing"]
  /// ```
  List<String> getWords() => RegExp(r'\b\w+\b')
      .allMatches(this)
      .map((match) => match.group(0)!)
      .toList();

  /// Splits a string into a list of substrings whenever an uppercase letter is encountered.
  ///
  /// This is commonly used for converting `PascalCase` or `camelCase` strings into
  /// separate words (e.g., for display names).
  ///
  /// @returns A [List<String>] containing the split components.
  ///
  /// Example:
  /// ```dart
  /// final camel = 'UserProfileData';
  /// print
  List<String> splitByUpperCase() => split(RegExp(r'(?=[A-Z])'));
}
