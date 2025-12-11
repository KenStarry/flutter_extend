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

  /// Returns size in Kilobytes (KB) as a double.
  double get sizeInBytes => lengthSync().toDouble();

  /// Returns size in Kilobytes (KB) as a double.
  double get sizeInKB => lengthSync() / 1024;

  /// Returns size in Megabytes (MB) as a double.
  double get sizeInMB => lengthSync() / (1024 * 1024);

  /// Returns size in Gigabytes (GB) as a double.
  double get sizeInGB => lengthSync() / (1024 * 1024 * 1024);


  bool isLargerThanMb(double mb) {
    try {
      final bytes = lengthSync();
      return bytes > (mb * 1024 * 1024);
    } catch (e) {
      return false;
    }
  }

  bool isSmallerThanMb(double mb) {
    try {
      final bytes = lengthSync();
      return bytes < (mb * 1024 * 1024);
    } catch (e) {
      return false;
    }
  }

  bool isLargerThanFile(File other) => lengthSync() > other.lengthSync();

  bool isSmallerThanFile(File other) => lengthSync() < other.lengthSync();

  bool isSameSizeAsFile(File other) => lengthSync() == other.lengthSync();

  bool isSizeBetween({required double minMB, required double maxMB}) {
    if (!existsSync()) return false;

    final bytes = lengthSync();
    final minBytes = minMB * 1024 * 1024;
    final maxBytes = maxMB * 1024 * 1024;

    return bytes >= minBytes && bytes <= maxBytes;
  }

  double percentageOfLimitMb(double totalLimitMB) {
    if (!existsSync() || totalLimitMB <= 0) return 0.0;

    final fileMB = lengthSync() / (1024 * 1024);
    final percent = (fileMB / totalLimitMB) * 100;

    return percent.clamp(0.0, 100.0);
  }
}
