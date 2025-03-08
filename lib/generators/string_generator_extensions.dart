part of '../flutter_extend.dart';

extension StringGeneratorExtensions on String {
  /// Lorem Generator - Generate Lorem Ipsum Text
  String generateLoremIpsum({int wordCount = 30}) {
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

  /// Random String generator
  String generateRandomString(int length,
      {bool includeNumbers = false, bool includeSpecial = false}) {
    const letters = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    const numbers = '0123456789';
    const special = '!@#\$%^&*()_+-=[]{}|;:\'",.<>?/`~';

    String chars = letters;

    if (includeNumbers) chars += numbers;
    if (includeSpecial) chars += special;

    final rand = Random();
    return List.generate(length, (index) => chars[rand.nextInt(chars.length)])
        .join('');
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

  /// Read From Clipboard - Read Contents from Clipboard
  Future<String?> generateClipboardContents({String? textIfNull}) async {
    final data = await Clipboard.getData('text/plain');
    return data?.text ?? textIfNull;
  }
}
