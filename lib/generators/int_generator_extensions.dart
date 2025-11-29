part of '../flutter_extend.dart';

extension IntGeneratorExtensions on int {
  // --- Lorem Ipsum Generators ---

  /// Generates a string with [this] number of Lorem Ipsum words.
  ///
  /// The words are generated sequentially from the internal constant word list.
  /// If [this] is less than or equal to 0, an empty string is returned.
  ///
  /// Example:
  /// ```dart
  /// final text = 10.loremWords;
  /// // text might be: "Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod"
  /// ```
  /// @returns A single string containing the requested number of words, separated by spaces.
  String get loremWords {
    if (this <= 0) return '';

    return List.generate(
        this, (index) => kLoremWords[index % kLoremWords.length]).join(' ');
  }

  /// Generates [this] number of Lorem Ipsum paragraphs.
  ///
  /// Each paragraph is approximately 40 words long and paragraphs are separated
  /// by two newline characters (`\n\n`).
  /// If [this] is less than or equal to 0, an empty string is returned.
  ///
  /// Example:
  /// ```dart
  /// final paragraphs = 3.loremParagraphs;
  /// // Returns three paragraphs of text separated by blank lines.
  /// ```
  /// @returns A single string containing the requested number of paragraphs.
  String get loremParagraphs {
    if (this <= 0) return '';

    return List.generate(this, (index) => 40.loremWords).join('\n\n');
  }

  /// Generates a random alphanumeric string of [this] length.
  ///
  /// The string contains a mix of upper/lower-case letters and numbers (0-9).
  /// If [this] is less than or equal to 0, an empty string is returned.
  ///
  /// Example:
  /// ```dart
  /// final apiKey = 32.randomString;
  /// // apiKey might be: "a8JfKz92B4mP1yQ0sR7tV3uW6xE5"
  /// ```
  /// @returns A random string of the specified length.
  String get randomString {
    if (this <= 0) return '';

    final rnd = Random();

    final buffer = StringBuffer();

    for (var i = 0; i < this; i++) {
      buffer.write(characters[rnd.nextInt(characters.length)]);
    }

    return buffer.toString();
  }

  /// Generates a versatile placeholder image URL from Lorem Picsum.
  ///
  /// This extension uses [this] integer as the **width** of the image.
  ///
  /// The image URL can be customized with optional parameters for height,
  /// grayscale mode, and blur level.
  ///
  /// @param height The height of the image. If null, the image will be square (width = height).
  /// @param grayscale If true, the image will be rendered in black and white.
  /// @param blur Blur level between 1 and 10 (clamped automatically).
  /// @returns A complete Lorem Picsum API URL string.
  ///
  /// Example (Square, 200x200):
  /// ```dart
  /// Image.network(200.placeholderImage()) // Returns [https://picsum.photos/200](https://picsum.photos/200)
  /// ```
  ///
  /// Example (Rectangle, 400x200, Grayscale):
  /// ```dart
  /// Image.network(400.placeholderImage(height: 200, grayscale: true))
  /// // Returns [https://picsum.photos/400/200?grayscale](https://picsum.photos/400/200?grayscale)
  /// ```
  String placeholderImage({
    int? height,
    bool grayscale = false,
    int? blur,
  }) {
    final w = this;
    final h = height ?? this;

    final baseUrl = 'https://picsum.photos/$w/$h';
    final params = <String>[];

    if (grayscale) params.add('grayscale');
    if (blur != null) params.add('blur=${blur.clamp(1, 10)}');

    if (params.isEmpty) return baseUrl;
    return '$baseUrl?${params.join('&')}';
  }
}
