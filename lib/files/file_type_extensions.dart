part of '../flutter_extend.dart';

extension FileTypeExtensions on File {
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
  bool get isImage {
    final ext = path.split('.').last.toLowerCase();

    return ['jpg', 'jpeg', 'png', 'gif', 'bmp', 'webp'].contains(ext);
  }

  bool get isAudio {
    final ext = fileExtension().toLowerCase();

    return ['mp3', 'wav', 'aac', 'flac', 'm4a', 'ogg', 'wma'].contains(ext);
  }

  bool get isVideo {
    final ext = fileExtension().toLowerCase();

    return ['mp4', 'mkv', 'mov', 'avi', 'webm', 'wmv'].contains(ext);
  }

  bool get isDocument {
    final ext = fileExtension().toLowerCase();
    return [
      'pdf',
      'doc',
      'docx',
      'txt',
      'rtf',
      'xlsx',
      'xlsx',
      'ppt',
      'pptx',
      'xls',
      'csv'
    ].contains(ext);
  }
}
