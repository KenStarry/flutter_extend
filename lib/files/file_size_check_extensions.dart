part of '../flutter_extend.dart';

extension FileSizeCheckExtensions on File {
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
}
