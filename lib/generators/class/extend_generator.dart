part of '../../flutter_extend.dart';

class ExtendGenerator {
  ExtendGenerator._();

  /// Generates a Mock UUID (v4 format).
  /// Note: For cryptographic security, use the `uuid` package.
  /// This is sufficient for UI testing and unique keys.
  static String get uuid {
    final random = Random();

    // Function to generate 4 random hex digits
    String hex4() => (random.nextInt(65536).toRadixString(16).padLeft(4, '0'));

    return '${hex4()}${hex4()}-${hex4()}-${hex4()}-${hex4()}-${hex4()}${hex4()}${hex4()}';
  }
}