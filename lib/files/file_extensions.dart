part of '../flutter_extend.dart';

extension FileExtensions on File {
  /// Get File Size in KB, MB or GB
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

  /// Get File Path
  String filePath() => path;

  /// Get File Extension
  String fileExtension() => uri.pathSegments.last.split('.').last;

  /// Get file name without extension
  String fileNameWithoutExtension() => uri.pathSegments.last.split('.').first;

  /// Convert to Base64 String
  String fileToBase64String() => base64Encode(readAsBytesSync());

  /// Check if file is an image
  bool isImage() {
    final ext = path.split('.').last.toLowerCase();

    return ['jpg', 'jpeg', 'png', 'gif', 'bmp', 'webp'].contains(ext);
  }
}
