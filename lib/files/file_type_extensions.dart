part of '../flutter_extend.dart';

extension FileTypeExtensions on File {
  FileType get type {
    if (isImage) return FileType.image;
    if (isAudio) return FileType.audio;
    if (isVideo) return FileType.video;
    if (isDocument) return FileType.document;
    if (isExecutable) return FileType.executable;
    if (isCode) return FileType.code;
    if (isArchive) return FileType.archive;
    if (isVector) return FileType.vector;
    if (isHidden) return FileType.hidden;

    return FileType.unknown;
  }

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

  /// Checks if the file is a presentation (PPT, Keynote).
  bool get isPresentation {
    final ext = fileExtension().toLowerCase();
    return ['ppt', 'pptx', 'key', 'odp'].contains(ext);
  }

  /// Checks if the file is a spreadsheet (Excel, CSV).
  bool get isSpreadsheet {
    final ext = fileExtension().toLowerCase();
    return ['xls', 'xlsx', 'csv', 'ods', 'numbers'].contains(ext);
  }

  /// Checks if the file is a text-based document (PDF, Word, TXT).
  bool get isTextDocument {
    final ext = fileExtension().toLowerCase();
    return ['pdf', 'doc', 'docx', 'txt', 'rtf', 'odt', 'md'].contains(ext);
  }

  bool get isExecutable {
    final ext = fileExtension().toLowerCase();
    return ['exe', 'apk', 'aab', 'dmg', 'bat', 'sh', 'bin', 'iso', 'msi']
        .contains(ext);
  }

  bool get isCode {
    final ext = fileExtension().toLowerCase();
    return [
      'dart',
      'js',
      'ts',
      'py',
      'java',
      'kt',
      'swift',
      'c',
      'cpp',
      'html',
      'css',
      'json',
      'xml',
      'yaml',
      'yml'
    ].contains(ext);
  }

  bool get isArchive {
    final ext = fileExtension().toLowerCase();
    return ['zip', 'rar', '7z', 'tar', 'gz', 'bz2'].contains(ext);
  }

  bool get isVector {
    final ext = fileExtension().toLowerCase();
    return ['svg', 'ai', 'eps', 'fig', 'psd'].contains(ext);
  }

  bool get isHidden {
    return fileNameWithoutExtension().startsWith('.');
  }
}
