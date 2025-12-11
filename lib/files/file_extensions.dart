part of '../flutter_extend.dart';

extension FileExtensions on File {
  /// Retrieves the absolute path of the file.
  ///
  /// @returns The full file path string.
  ///
  /// Example:
  /// ```dart
  /// final path = file.filePath(); // e.g., "/data/user/0/app.name/cache/temp.txt"
  /// ```
  String filePath() => path;

  /// Retrieves the file extension (the part after the last dot).
  ///
  /// @returns The file extension string (e.g., "png", "pdf").
  ///
  /// Example:
  /// ```dart
  /// print(File('/img/photo.png').fileExtension()); // "png"
  /// ```
  String fileExtension() => uri.pathSegments.last.split('.').last;

  /// Retrieves the file name without the extension.
  ///
  /// @returns The file name string.
  ///
  /// Example:
  /// ```dart
  /// print(File('/docs/report.pdf').fileNameWithoutExtension()); // "report"
  /// ```
  String fileNameWithoutExtension() {
    final name = uri.pathSegments.last;
    final dotIndex = name.lastIndexOf('.');

    //  The file name doesn't have an extension
    if (dotIndex == -1) return name;

    return name.substring(0, dotIndex);

    return uri.pathSegments.last.split('.').first;
  }

  /// Reads the file contents synchronously and converts them to a Base64 encoded string.
  ///
  /// **WARNING:** This uses [readAsBytesSync()] and [base64Encode] and should be
  /// avoided on the main UI thread, especially for large files, as it will block rendering.
  ///
  /// @returns The Base64 encoded string of the file contents.
  ///
  /// Example:
  /// ```dart
  /// final base64 = file.fileToBase64String(); // "iVBORw0KGgoAAA..."
  /// ```
  String fileToBase64String() => base64Encode(readAsBytesSync());
}
