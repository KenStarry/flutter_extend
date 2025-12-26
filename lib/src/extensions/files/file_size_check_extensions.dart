import 'dart:io';

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

  /// Returns the file size in raw Bytes as a [double].
  ///
  /// Useful for precise mathematical operations where integer overflow might be a concern.
  /// Example:
  /// ```dart
  /// final size = file.sizeInBytes; // 1048576.0 for a 1MB file
  /// ```
  double get sizeInBytes => lengthSync().toDouble();

  /// Returns the file size in Kilobytes (KB) as a [double].
  ///
  /// Example:
  /// ```dart
  /// print(file.sizeInKB); // 1024.0 for a 1MB file
  /// ```
  double get sizeInKB => lengthSync() / 1024;

  /// Returns the file size in Megabytes (MB) as a [double].
  ///
  /// Example:
  /// ```dart
  /// print(file.sizeInMB); // 1.0 for a 1MB file
  /// ```
  double get sizeInMB => lengthSync() / (1024 * 1024);

  /// Returns the file size in Gigabytes (GB) as a [double].
  ///
  /// Example:
  /// ```dart
  /// print(file.sizeInGB); // 0.0009765625 for a 1MB file
  /// ```
  double get sizeInGB => lengthSync() / (1024 * 1024 * 1024);

  /// Checks if the file size is strictly greater than the specified size in Megabytes (MB).
  ///
  /// @param mb The size limit in megabytes.
  /// @returns [bool] `true` if the file is larger than `mb` megabytes. Returns `false` on file access error.
  ///
  /// Example:
  /// ```dart
  /// print(file.isLargerThanMb(50)); // true if file is 50.01MB
  /// ```
  bool isLargerThanMb(double mb) {
    try {
      final bytes = lengthSync();
      return bytes > (mb * 1024 * 1024);
    } catch (e) {
      return false;
    }
  }

  /// Checks if the file size is strictly less than the specified size in Megabytes (MB).
  ///
  /// @param mb The size limit in megabytes.
  /// @returns [bool] `true` if the file is smaller than `mb` megabytes. Returns `false` on file access error.
  ///
  /// Example:
  /// ```dart
  /// print(file.isSmallerThanMb(0.5)); // true if file is 400KB
  /// ```
  bool isSmallerThanMb(double mb) {
    try {
      final bytes = lengthSync();
      return bytes < (mb * 1024 * 1024);
    } catch (e) {
      return false;
    }
  }

  /// Checks if this file is larger than another [File] object by comparing raw byte counts.
  ///
  /// @param other The other [File] object to compare size against.
  /// @returns [bool] `true` if the current file's byte count is greater.
  ///
  /// Example:
  /// ```dart
  /// print(fileA.isLargerThanFile(fileB));
  /// ```
  bool isLargerThanFile(File other) => lengthSync() > other.lengthSync();

  /// Checks if this file is smaller than another [File] object by comparing raw byte counts.
  ///
  /// @param other The other [File] object to compare size against.
  /// @returns [bool] `true` if the current file's byte count is smaller.
  ///
  /// Example:
  /// ```dart
  /// print(fileA.isSmallerThanFile(fileB));
  /// ```
  bool isSmallerThanFile(File other) => lengthSync() < other.lengthSync();

  /// Checks if this file has the exact same size (byte count) as another [File] object.
  ///
  /// @param other The other [File] object to compare size against.
  /// @returns [bool] `true` if the files have identical byte counts.
  ///
  /// Example:
  /// ```dart
  /// print(fileA.isSameSizeAsFile(fileB));
  /// ```
  bool isSameSizeAsFile(File other) => lengthSync() == other.lengthSync();

  /// Checks if the file size falls inclusively between the specified minimum and maximum sizes in Megabytes (MB).
  ///
  /// @param minMB The minimum size limit (inclusive) in megabytes.
  /// @param maxMB The maximum size limit (inclusive) in megabytes.
  /// @returns [bool] `true` if the file size is $\ge minMB$ and $\le maxMB$. Returns `false` if the file does not exist.
  ///
  /// Example:
  /// ```dart
  /// // Check if file is between 500 KB (0.5 MB) and 10 MB
  /// print(file.isSizeBetween(minMB: 0.5, maxMB: 10));
  /// ```
  bool isSizeBetween({required double minMB, required double maxMB}) {
    if (!existsSync()) return false;

    final bytes = lengthSync();
    final minBytes = minMB * 1024 * 1024;
    final maxBytes = maxMB * 1024 * 1024;

    return bytes >= minBytes && bytes <= maxBytes;
  }

  /// Calculates the file's size as a percentage of a given total size limit.
  ///
  /// Useful for calculating storage usage against a quota or cache limit.
  /// The result is clamped between 0.0 and 100.0.
  ///
  /// @param totalLimitMB The total limit in Megabytes (MB).
  /// @returns [double] The percentage of the limit consumed by this file. Returns 0.0 if the file doesn't exist or limit is invalid.
  ///
  /// Example:
  /// ```dart
  /// // If file is 5MB and limit is 100MB, returns 5.0
  /// print(file.percentageOfLimitMb(100));
  /// ```
  double percentageOfLimitMb(double totalLimitMB) {
    if (!existsSync() || totalLimitMB <= 0) return 0.0;

    final fileMB = lengthSync() / (1024 * 1024);
    final percent = (fileMB / totalLimitMB) * 100;

    return percent.clamp(0.0, 100.0);
  }
}
