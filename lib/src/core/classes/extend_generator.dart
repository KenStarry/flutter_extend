import 'dart:math';
import 'dart:ui';
import 'package:flutter/services.dart';
import 'package:flutter_extend/src/extensions/generators/int_generator_extensions.dart';


import '../enum/card_type.dart';

class ExtendGenerator {
  ExtendGenerator._();

  /// Simulates a live stream of data that emits [count] items.
  ///
  /// This uses `async*` and `yield` to simulate data arriving over a network.
  /// Great for testing [StreamBuilder]s, loading states, and live feeds.
  ///
  /// @param generator A function that creates a single item of type [T]. The index is passed for sequential generation.
  /// @param count The total number of items to emit (default: 10).
  /// @param interval The delay between emitting each item (default: 1 second).
  /// @returns A [Stream] that emits the generated objects over time.
  ///
  /// Example:
  /// ```dart
  /// // Generates 5 items, emitted every 500 milliseconds.
  /// final priceStream = ExtendGenerator.streamOf<double>(
  ///   (i) => 100.0 + i * 0.5,
  ///   count: 5,
  ///   interval: 500.milliseconds,
  /// );
  /// ```
  static Stream<T> streamOf<T>(
    T Function(int index) generator, {
    int count = 10,
    Duration interval = const Duration(seconds: 1),
  }) async* {
    for (int i = 0; i < count; i++) {
      await Future.delayed(interval);
      yield generator(i);
    }
  }

  /// Generates a Mock UUID (v4 format).
  ///
  /// **Note:** For cryptographically secure or RFC 4122-compliant UUIDs,
  /// use the specialized `uuid` package. This is sufficient for UI testing and unique keys.
  ///
  /// @returns A formatted 36-character string mock UUID.
  ///
  /// Example:
  /// ```dart
  /// final mockId = ExtendGenerator.uuid; // e.g., "a1b2c3d4-e5f6-7890-1234-567890abcdef"
  /// ```
  static String get uuid {
    final random = Random();

    // Function to generate 4 random hex digits
    String hex4() => (random.nextInt(65536).toRadixString(16).padLeft(4, '0'));

    return '${hex4()}${hex4()}-${hex4()}-${hex4()}-${hex4()}-${hex4()}${hex4()}${hex4()}';
  }

  /// Returns true based on a specific probability [chance] (0.0 to 1.0).
  ///
  /// This is used for generating data that mimics real-world scenarios
  /// (e.g., simulating a network error 10% of the time).
  ///
  /// @param chance The probability of returning true (0.0 = never, 1.0 = always).
  /// @returns A boolean value determined by the weighted probability.
  ///
  /// Example:
  /// ```dart
  /// // Returns true approximately 15% of the time
  /// final shouldFail = ExtendGenerator.weightedBool(0.15);
  /// if (shouldFail) { /* Simulate error */ }
  /// ```
  static bool weightedBool(double chance) {
    if (chance <= 0) return false;
    if (chance >= 1) return true;
    return Random().nextDouble() < chance;
  }

  /// Generates a specific type of Mock Credit Card Number.
  ///
  /// These numbers are valid according to the Luhn algorithm checksum,
  /// making them ideal for testing payment form validation logic.
  ///
  /// @param type The type of card to generate (Visa, Mastercard, Amex, Discover).
  /// @returns A mock credit card number string.
  ///
  /// Example:
  /// ```dart
  /// final visaCard = ExtendGenerator.randomCreditCard();
  /// final amexCard = ExtendGenerator.randomCreditCard(type: CardType.amex);
  /// ```
  static String randomCreditCard({CardType type = CardType.visa}) {
    final random = Random();
    String prefix;
    int length;

    switch (type) {
      case CardType.visa:
        prefix = '4';
        length = 16;
        break;
      case CardType.mastercard:
        prefix = '5${random.nextInt(5) + 1}'; // 51-55
        length = 16;
        break;
      case CardType.amex:
        prefix = '3${random.nextBool() ? 4 : 7}'; // 34 or 37
        length = 15;
        break;
      case CardType.discover:
        prefix = '6011';
        length = 16;
        break;
    }

    // Generate random digits until length - 1
    String ccNumber = prefix;
    while (ccNumber.length < length - 1) {
      ccNumber += random.nextInt(10).toString();
    }

    // Calculate Checksum (Luhn Algorithm)
    int sum = 0;
    bool alternate = true;
    for (int i = ccNumber.length - 1; i >= 0; i--) {
      int n = int.parse(ccNumber[i]);
      if (alternate) {
        n *= 2;
        if (n > 9) n = (n % 10) + 1;
      }
      sum += n;
      alternate = !alternate;
    }

    final checksumDigit = (10 - (sum % 10)) % 10;
    return ccNumber + checksumDigit.toString();
  }

  /// Generates a random opaque [Color].
  ///
  /// The color is fully opaque (alpha 255) with random RGB values.
  /// Ideal for quick visual debugging and distinguishing containers in a prototype layout.
  ///
  /// @returns A random [Color] object.
  ///
  /// Example:
  /// ```dart
  /// Container(color: ExtendGenerator.randomColor)
  /// ```
  static Color get randomColor {
    final random = Random();
    return Color.fromARGB(
      255, // Always fully opaque
      random.nextInt(256), // Red
      random.nextInt(256), // Green
      random.nextInt(256), // Blue
    );
  }

  /// Generates a random [DateTime] within the past [daysBack].
  ///
  /// Useful for testing sorting, displaying "time ago," or populating mock user data.
  ///
  /// @param daysBack The maximum number of days into the past the date can be (default: 365).
  /// @returns A random [DateTime] object.
  ///
  /// Example:
  /// ```dart
  /// final postDate = ExtendGenerator.randomDate(daysBack: 30); // Date within the last month
  /// ```
  static DateTime randomDate({int daysBack = 365}) {
    final random = Random();
    final now = DateTime.now();
    return now.subtract(Duration(
      days: random.nextInt(daysBack),
      hours: random.nextInt(24),
      minutes: random.nextInt(60),
    ));
  }

  /// Generates a mock email address using common domains (e.g., gmail.com, yahoo.com).
  ///
  /// The username portion is generated using the `8.randomString` extension.
  ///
  /// @returns A mock email address string.
  ///
  /// Example:
  /// ```dart
  /// final email = ExtendGenerator.randomEmail; // e.g., "a8jkld7d@gmail.com"
  /// ```
  static String get randomEmail {
    const domains = ['gmail.com', 'yahoo.com', 'outlook.com', 'example.com'];
    final random = Random();

    final username = 8.randomString.toLowerCase();
    final domain = domains[random.nextInt(domains.length)];

    return '$username@$domain';
  }

  /// Retrieves the current contents from the system clipboard.
  ///
  /// This is a utility wrapper for [Clipboard.getData('text/plain')].
  ///
  /// @returns A [Future] that completes with the clipboard text, or null if no text is present.
  ///
  /// Example:
  /// ```dart
  /// final contents = await ExtendGenerator.clipboardData;
  /// if (contents != null) { /* process data */ }
  /// ```
  static Future<String?> get clipboardData async {
    final data = await Clipboard.getData('text/plain');
    return data?.text;
  }
}
