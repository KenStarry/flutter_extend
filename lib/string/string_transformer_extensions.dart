part of '../flutter_extend.dart';

extension StringTransformerExtensionsNullable on String? {
  /// Returns the original string if it is not null and not empty,
  /// otherwise returns the provided [defaultValue].
  ///
  /// This is an essential utility for safely displaying text, guaranteeing
  /// a non-null, non-empty string result.
  ///
  /// @param defaultValue The string to return if the original string is null or empty.
  /// @returns The original string (if valid) or the [defaultValue].
  ///
  /// Example:
  /// ```dart
  /// String? title = getTitleFromAPI(); // Could be null
  /// print(title.withDefaultValue('Untitled Document'));
  /// // If title is null or '', prints "Untitled Document"
  /// ```
  String withDefaultValue(String defaultValue) =>
      (this == null || (this != null && this!.isEmpty)) ? defaultValue : this!;
}

extension StringTransformerExtensions on String {
  /// Appends a graphical emoji representation to the end of the string.
  ///
  /// **Note:** This requires that the [Emoji] class and enum (or similar structure)
  /// is defined elsewhere in the package.
  ///
  /// @param emoji The [Emoji] object containing the string representation of the emoji.
  /// @returns A new string with the emoji appended, separated by a space.
  ///
  /// Example:
  /// ```dart
  /// // Assuming Emoji.star is a defined constant
  /// print('Great Job'.withEmoji(Emoji.star)); // "Great Job ⭐"
  /// ```
  String withEmoji(Emoji emoji) => '$this ${emoji.emoji}';

  /// URL-encodes the string.
  ///
  /// This replaces characters that are illegal or unsafe in a URL (e.g., spaces,
  /// ampersands, slashes) with their percent-encoded equivalents.
  ///
  /// @returns The URL-encoded string.
  ///
  /// Example:
  /// ```dart
  /// final urlParam = 'user name'.withUrlEncoded(); // "user%20name"
  /// ```
  String withUrlEncoded() => Uri.encodeComponent(this);

  /// Prepends a '#' symbol to the string and removes all spaces.
  ///
  /// This is typically used to format user input into a standardized hashtag.
  ///
  /// @returns A hashtag-formatted string.
  ///
  /// Example:
  /// ```dart
  /// print('flutter extend'.withHashtag()); // "#flutterextend"
  /// ```
  String withHashtag() => '#${replaceAll(' ', '').trim()}';

  /// Truncates the string if its length exceeds [maxLength] and appends an ellipsis ("...").
  ///
  /// If the string is shorter than or equal to [maxLength], the original string is returned.
  /// The resulting string will have a length of [maxLength] + 3 (for the ellipsis).
  ///
  /// @param maxLength The maximum number of characters allowed before truncation.
  /// @returns A potentially truncated string with an ellipsis.
  ///
  /// Example:
  /// ```dart
  /// final long = 'This is a long message';
  /// print(long.withEllipsis(10)); // "This is a ..."
  /// ```
  String withEllipsis(int maxLength) {
    if (length <= maxLength) return this;

    return '${substring(0, maxLength)}...';
  }

  /// Wraps the string with the specified left and right delimiters.
  ///
  /// @param left The opening delimiter (default: '(').
  /// @param right The closing delimiter (default: ')').
  /// @returns The wrapped string.
  ///
  /// Example:
  /// ```dart
  /// print('pending'.withBrackets());          // "(pending)"
  /// print('success'.withBrackets('[', ']')); // "[success]"
  /// ```
  String withBrackets([String left = '(', String right = ')']) =>
      '$left$this$right';

  /// Converts a numeric string into its ordinal form (e.g., 1st, 2nd, 23rd).
  ///
  /// If the string is not purely numeric or is empty, the original string is returned.
  /// Uses the specific rules for English ordinals (handling '11th', '12th', '13th' exceptions).
  ///
  /// **Note:** This requires the `isDigitsOnly()` method (from [RegexStringExtensions]) to be available.
  ///
  /// @returns The ordinal string (e.g., "1st", "2nd", "23rd").
  ///
  /// Example:
  /// ```dart
  /// print('1'.withOrdinal());  // "1st"
  /// print('2'.withOrdinal());  // "2nd"
  /// print('11'.withOrdinal()); // "11th"
  /// print('23'.withOrdinal()); // "23rd"
  /// ```
  String withOrdinal() {
    if (isEmpty || !isDigitsOnly()) return this;

    final number = int.parse(this);

    if (number % 100 >= 11 && number % 100 <= 13) return '${this}th';

    switch (number % 10) {
      case 1:
        return '${this}st';
      case 2:
        return '${this}nd';
      case 3:
        return '${this}rd';
      default:
        return '${this}th';
    }
  }

  /// Ensures that the string ends with the specified [suffix].
  ///
  /// If the string is not empty and does not already end with [suffix], the suffix is appended.
  ///
  /// @param suffix The suffix to ensure the string ends with.
  /// @returns The string, guaranteed to end with the suffix.
  ///
  /// Example:
  /// ```dart
  /// print('user'.ensureEndsWith('.json'));    // "user.json"
  /// print('index.html'.ensureEndsWith('.html')); // "index.html"
  /// ```
  String ensureEndsWith(String suffix) {
    if (!endsWith(suffix) && isNotEmpty) {
      return '$this$suffix';
    }

    return this;
  }

  /// Ensures that the string starts with the specified [prefix].
  ///
  /// If the string is not empty and does not already start with [prefix], the prefix is prepended.
  ///
  /// @param prefix The prefix to ensure the string starts with.
  /// @returns The string, guaranteed to start with the prefix.
  ///
  /// Example:
  /// ```dart
  /// print('data'.ensureStartsWith('/api/')); // "/api/data"
  /// print('/users'.ensureStartsWith('/'));  // "/users"
  /// ```
  String ensureStartsWith(String prefix) {
    if (!startsWith(prefix) && isNotEmpty) {
      return '$prefix$this';
    }

    return this;
  }

  /// Masks the central portion of the string while keeping a fixed number of
  /// characters visible at the beginning and end.
  ///
  /// This is essential for securely displaying sensitive data like credit card numbers,
  /// email addresses, or account IDs.
  ///
  /// @param visibleCount The number of characters to keep visible at the start and end (default: 2).
  /// @param maskCharacter The character used to hide the central portion (default: '*').
  /// @returns A masked string. If the string is too short, the original string is returned.
  ///
  /// Example (Credit Card Masking):
  /// ```dart
  /// final card = '1234567890123456';
  /// print(card.mask(visibleCount: 4)); // "1234********3456"
  /// ```
  ///
  /// Example (Email Masking):
  /// ```dart
  /// final email = 'user@domain.com';
  /// print(email.mask(visibleCount: 1, maskCharacter: 'X')); // "uXXXXXXXXXX.X"
  /// ```
  String mask({int visibleCount = 2, String maskCharacter = '*'}) {
    if (length <= visibleCount * 2) return this;

    return substring(0, visibleCount) +
        maskCharacter * (length - visibleCount * 2) +
        substring(length - visibleCount);
  }

  /// Reverses the order of the characters in the string.
  ///
  /// @returns The reversed string.
  ///
  /// Example:
  /// ```dart
  /// final text = 'dart';
  /// print(text.reverse()); // "trad"
  /// ```
  String reverse() => split('').reversed.join('');

  /// Retrieves the last N characters of the string.
  ///
  /// If the string's length is less than [n], the original string is returned.
  ///
  /// @param n The number of characters to retrieve from the end of the string.
  /// @returns A substring containing the last [n] characters.
  ///
  /// Example:
  /// ```dart
  /// final id = 'TX202512345';
  /// print(id.getLastNCharacters(4)); // "2345"
  /// ```
  String getLastNCharacters(int n) =>
      length >= n ? substring(length - n) : this;

  /// Truncates a full name (first and last name) to show the first name and the initial of the last name.
  ///
  /// If the string contains only one word, the original word is returned.
  ///
  /// @returns A formatted string (e.g., "John D.").
  ///
  /// Example:
  /// ```dart
  /// final name1 = 'Alice Wonderland';
  /// print(name1.truncateName()); // "Alice W."
  ///
  /// final name2 = 'Bob';
  /// print(name2.truncateName()); // "Bob"
  /// ```
  String truncateName() {
    final wordArray = split(' ');

    return wordArray.length > 1
        ? '${wordArray[0]} ${wordArray[1][0]}.'
        : wordArray[0];
  }
}
