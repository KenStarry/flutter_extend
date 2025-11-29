part of '../flutter_extend.dart';

extension StringGeneratorExtensions on String {
  /// Generates a DiceBear avatar URL using [this] string as the seed.
  ///
  /// The generated URL can be used directly in Flutter's [Image.network]
  /// or equivalent widgets to display unique, deterministic user avatars.
  ///
  /// Example:
  /// ```dart
  /// // Generates a 'bottts' style avatar using the user's ID as the seed.
  /// Image.network('user_id_123'.avatar(
  ///   style: DiceBearStyle.bottts,
  ///   size: 150,
  ///   backgroundColor: 'ffc0cb', // Pink background
  /// ));
  /// ```
  ///
  /// @param style The visual style of the avatar (default: [DiceBearStyle.avataaars]).
  /// @param type The image format (default: [DiceBearImageType.png]).
  /// @param size The size of the image in pixels (optional).
  /// @param backgroundColor Hex code without # (e.g., "b6e3f4") or "transparent".
  /// @param flip Flips the image horizontally.
  /// @returns A complete DiceBear API URL string.
  String avatar({
    DiceBearStyle style = DiceBearStyle.avataaars,
    DiceBearImageType type = DiceBearImageType.png,
    int? size,
    bool flip = false,
    String? backgroundColor,
  }) {
    // Base API URL (Using 9.x which is stable)
    final baseUrl = 'https://api.dicebear.com/9.x/${style._apiName}/${type.label}';

    // Build Query Parameters
    final queryParams = <String>[
      'seed=${Uri.encodeComponent(this)}',
      if (size != null) 'size=$size',
      if (flip) 'flip=true',
      if (backgroundColor != null) 'backgroundColor=$backgroundColor',
    ];

    return '$baseUrl?${queryParams.join('&')}';
  }


  /// Lorem Generator - Generate Lorem Ipsum Text
  @Deprecated(
      "Use `int.loremWords` instead e.g `30.loremWords`. This will be removed in flutter_extend 1.0.0.")
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
  @Deprecated(
      "Use `int.randomString` instead e.g `30.randomString`. This will be removed in flutter_extend 1.0.0.")
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
  @Deprecated(
      "Use `ExtendGenerator.uuid` instead. This will be removed in flutter_extend 1.0.0.")
  String generateUUID({int length = 32}) {
    final random = Random();

    final uuid = List.generate(length, (index) {
      final char = random.nextInt(16).toRadixString(16);

      return [8, 12, 16, 20].contains(index) ? '-$char' : char;
    }).join();

    return uuid;
  }

  /// Read From Clipboard - Read Contents from Clipboard
  @Deprecated(
      "Use `await ExtendGenerator.clipboardData` instead. This will be removed in flutter_extend 1.0.0.")
  Future<String?> generateClipboardContents({String? textIfNull}) async {
    final data = await Clipboard.getData('text/plain');
    return data?.text ?? textIfNull;
  }
}
