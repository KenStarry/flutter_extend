part of '../flutter_extend.dart';

extension StringGeneratorExtensions on String {
  /// Lorem Generator - Generate Lorem Ipsum Text
  String loremIpsum({int wordCount = 30}) {
    const loremWords = [
      'Lorem',
      'ipsum',
      'dolor',
      'sit',
      'amet',
      'consectetur',
      'adipiscing',
      'elit',
      'sed',
      'do',
      'eiusmod',
      'tempor',
      'incididunt',
      'ut',
      'labore',
      'et',
      'dolore',
      'magna',
      'aliqua',
      'Ut',
      'enim',
      'ad',
      'minim',
      'veniam',
      'quis',
      'nostrud',
      'exercitation',
      'ullamco',
      'laboris',
      'nisi',
      'ut',
      'aliquip',
      'ex',
      'ea',
      'commodo',
      'consequat',
      'Duis',
      'aute',
      'irure',
      'dolor',
      'in',
      'reprehenderit',
      'in',
      'voluptate',
      'velit',
      'esse',
      'cillum',
      'dolore',
      'eu',
      'fugiat',
      'nulla',
      'pariatur',
      'Excepteur',
      'sint',
      'occaecat',
      'cupidatat',
      'non',
      'proident',
      'sunt',
      'in',
      'culpa',
      'qui',
      'officia',
      'deserunt',
      'mollit',
      'anim',
      'id',
      'est',
      'laborum'
    ];

    return List.generate(
        wordCount, (index) => loremWords[index % loremWords.length]).join(' ');
  }

  /// UUID Generator - Generates a random UUID (Universally Unique Identifier)
  String generateUUID({int length = 32}) {
    final random = Random();

    final uuid = List.generate(length, (index) {
      final char = random.nextInt(16).toRadixString(16);

      return [8, 12, 16, 20].contains(index) ? '-$char' : char;
    }).join();

    return uuid;
  }
}
