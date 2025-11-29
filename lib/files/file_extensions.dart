part of '../flutter_extend.dart';

extension FileExtensions on File {
  /// Retrieves the file size and formats it into human-readable units (B, KB, MB, GB).
  ///
  /// This method uses [lengthSync()] and should be called outside of the main UI thread
  /// for large files to avoid blocking.
  ///
  /// @param fullySizedName If true, uses the full unit names (e.g., 'Kilobytes'); otherwise, uses abbreviations (e.g., 'KB').
  /// @returns A formatted string representing the file size.
  ///
  /// Example:
  /// ```dart
  /// final file = File('path/to/data.zip');
  /// print(file.fileFormattedSize());              // "5.32 MB"
  /// print(file.fileFormattedSize(fullySizedName: true)); // "5.32 Megabytes"
  /// ```
  String fileFormattedSize({bool fullySizedName = false}) {
    int bytes = lengthSync();

    if (bytes < 1024) return "$bytes ${fullySizedName ? 'Bytes' : 'B'}";

    if (bytes < 1024 * 1024) {
      return "${(bytes / 1024).toStringAsFixed(2)} ${fullySizedName ? 'Kilobytes' : 'KB'}";
    }

    if (bytes < 1024 * 1024 * 1024) {
      return "${(bytes / (1024 * 1024)).toStringAsFixed(2)} ${fullySizedName ? 'Megabytes' : 'MB'}";
    }

    return "${(bytes / (1024 * 1024 * 1024)).toStringAsFixed(2)} ${fullySizedName ? 'Gigabytes' : 'GB'}";
  }

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
  String fileNameWithoutExtension() => uri.pathSegments.last.split('.').first;

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

  /// Checks if the file is likely an image based on its extension.
  ///
  /// Supports common formats: 'jpg', 'jpeg', 'png', 'gif', 'bmp', 'webp'.
  ///
  /// @returns True if the file extension matches a recognized image type (case-insensitive).
  ///
  /// Example:
  /// ```dart
  /// print(File('profile.JPG').isImage()); // true
  /// ```
  bool isImage() {
    final ext = path.split('.').last.toLowerCase();

    return ['jpg', 'jpeg', 'png', 'gif', 'bmp', 'webp'].contains(ext);
  }
}
