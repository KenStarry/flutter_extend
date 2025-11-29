part of '../flutter_extend.dart';

extension IntGeneratorExtensions on int {
  // --- Lorem Ipsum Generators ---

  /// Generates a string with [this] number of Lorem Ipsum words.
  /// Example: 10.loremWords
  String get loremWords {
    if (this <= 0) return '';

    return List.generate(
        this, (index) => kLoremWords[index % kLoremWords.length]).join(' ');
  }
}
