import 'dart:io';

import 'package:flutter_extend/src/extensions/files/file_extensions.dart';

import '../../core/enum/file_type_enum.dart';

extension FileTypeExtensions on File {
  /// Resolves and returns the general [FileType] based on a hierarchical check
  /// of the file's extension and name.
  ///
  /// The checks are performed in a structured order to correctly categorize files.
  ///
  /// @returns The resolved [FileType] (e.g., [FileType.image], [FileType.audio]).
  ///
  /// Example:
  /// ```dart
  /// final type = File('song.mp3').type; // FileType.audio
  /// switch (type) {
  ///   case FileType.image: ...
  ///   case FileType.unknown: ...
  /// }
  /// ```
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

  /// Checks if the file is likely a raster image based on its extension.
  ///
  /// Supports common formats: 'jpg', 'jpeg', 'png', 'gif', 'bmp', 'webp'.
  ///
  /// @returns [bool] `true` if the file extension matches a recognized image type (case-insensitive).
  ///
  /// Example:
  /// ```dart
  /// print(File('profile.JPG').isImage); // true
  /// ```
  bool get isImage {
    final ext = path.split('.').last.toLowerCase();

    return ['jpg', 'jpeg', 'png', 'gif', 'bmp', 'webp'].contains(ext);
  }

  /// Checks if the file is likely an audio file.
  ///
  /// Supports common formats: 'mp3', 'wav', 'aac', 'flac', 'm4a', 'ogg', 'wma'.
  ///
  /// @returns [bool] `true` if the file extension matches a recognized audio type.
  ///
  /// Example:
  /// ```dart
  /// print(File('music.flac').isAudio); // true
  /// ```
  bool get isAudio {
    final ext = fileExtension().toLowerCase();

    return ['mp3', 'wav', 'aac', 'flac', 'm4a', 'ogg', 'wma'].contains(ext);
  }

  /// Checks if the file is likely a video file.
  ///
  /// Supports common formats: 'mp4', 'mkv', 'mov', 'avi', 'webm', 'wmv'.
  ///
  /// @returns [bool] `true` if the file extension matches a recognized video type.
  ///
  /// Example:
  /// ```dart
  /// print(File('clip.mp4').isVideo); // true
  /// ```
  bool get isVideo {
    final ext = fileExtension().toLowerCase();

    return ['mp4', 'mkv', 'mov', 'avi', 'webm', 'wmv'].contains(ext);
  }

  /// Checks if the file is a general-purpose document, covering text, office, and PDF formats.
  ///
  /// This is a broad check, combining the extensions from [isTextDocument], [isSpreadsheet], and [isPresentation].
  ///
  /// @returns [bool] `true` if the file is any common document type.
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

  /// Checks if the file is a presentation file format.
  ///
  /// Supports common formats: 'ppt', 'pptx', 'key', 'odp'.
  ///
  /// @returns [bool] `true` if the file is a presentation.
  bool get isPresentation {
    final ext = fileExtension().toLowerCase();
    return ['ppt', 'pptx', 'key', 'odp'].contains(ext);
  }

  /// Checks if the file is a spreadsheet file format.
  ///
  /// Supports common formats: 'xls', 'xlsx', 'csv', 'ods', 'numbers'.
  ///
  /// @returns [bool] `true` if the file is a spreadsheet.
  bool get isSpreadsheet {
    final ext = fileExtension().toLowerCase();
    return ['xls', 'xlsx', 'csv', 'ods', 'numbers'].contains(ext);
  }

  /// Checks if the file is a general text or readable document file (PDF, Word, Markdown, etc.).
  ///
  /// Supports common formats: 'pdf', 'doc', 'docx', 'txt', 'rtf', 'odt', 'md'.
  ///
  /// @returns [bool] `true` if the file is a text-based document.
  bool get isTextDocument {
    final ext = fileExtension().toLowerCase();
    return ['pdf', 'doc', 'docx', 'txt', 'rtf', 'odt', 'md'].contains(ext);
  }

  /// Checks if the file is likely an executable or system binary file.
  ///
  /// Supports common formats: 'exe', 'apk', 'aab', 'dmg', 'bat', 'sh', 'bin', 'iso', 'msi'.
  ///
  /// @returns [bool] `true` if the file is an executable.
  bool get isExecutable {
    final ext = fileExtension().toLowerCase();
    return ['exe', 'apk', 'aab', 'dmg', 'bat', 'sh', 'bin', 'iso', 'msi']
        .contains(ext);
  }

  /// Checks if the file is a source code, markup, or configuration file.
  ///
  /// Supports formats like Dart, JS, TS, Python, HTML, CSS, JSON, XML, YAML.
  ///
  /// @returns [bool] `true` if the file is a common code/config file.
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

  /// Checks if the file is an archive (compressed folder).
  ///
  /// Supports common formats: 'zip', 'rar', '7z', 'tar', 'gz', 'bz2'.
  ///
  /// @returns [bool] `true` if the file is an archive.
  bool get isArchive {
    final ext = fileExtension().toLowerCase();
    return ['zip', 'rar', '7z', 'tar', 'gz', 'bz2'].contains(ext);
  }

  /// Checks if the file is a vector graphic or design file.
  ///
  /// Supports formats like SVG, AI, EPS, FIG, PSD.
  ///
  /// @returns [bool] `true` if the file is a vector or design file.
  bool get isVector {
    final ext = fileExtension().toLowerCase();
    return ['svg', 'ai', 'eps', 'fig', 'psd'].contains(ext);
  }

  /// Checks if the file is hidden, based on the Unix convention of starting the
  /// filename with a dot (.).
  ///
  /// @returns [bool] `true` if the file name starts with a dot.
  ///
  /// Example:
  /// ```dart
  /// print(File('.htaccess').isHidden); // true
  /// ```
  bool get isHidden => fileNameWithoutExtension().startsWith('.');
}
