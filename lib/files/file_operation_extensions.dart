part of '../flutter_extend.dart';

extension FileOperationExtensions on File {
  /// Safely deletes the file only if it exists, preventing [FileSystemException].
  ///
  /// This method first checks for the file's existence using [exists()] before attempting
  /// to call [delete()]. It is designed to be a non-crashing wrapper for file cleanup.
  ///
  /// @returns A [Future<bool>] that completes with `true` if the file was successfully
  /// deleted, or `false` if the file did not exist or if an error occurred during
  /// deletion (e.g., due to permission issues).
  ///
  /// Example:
  /// ```dart
  /// final file = File('path/to/temp.log');
  /// final success = await file.deleteIfExistsSafe();
  /// print('Deletion status: $success'); // true or false
  /// ```
  Future<bool> deleteIfExistsSafe() async {
    try {
      if (await exists()) {
        await delete();
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }

  /// Safely reads the file contents and attempts to decode them as a JSON Map.
  ///
  /// This method is a non-crashing wrapper for reading and parsing JSON files.
  /// It handles three common failure modes gracefully:
  /// 1. File does not exist.
  /// 2. File exists but cannot be read (e.g., permission error).
  /// 3. File content is not valid JSON.
  ///
  /// @returns A [Future<Map<String, dynamic>?>] that completes with the parsed JSON map.
  /// Returns `null` if the file is not found, cannot be read, or contains invalid JSON.
  ///
  /// Example:
  /// ```dart
  /// final configFile = File('config.json');
  /// final config = await configFile.readAsJsonSafe();
  /// if (config != null) {
  ///   print('API Key: ${config['apiKey']}');
  /// }
  /// ```
  Future<Map<String, dynamic>?> readAsJsonSafe() async {
    try {
      if (!await exists()) {
        return null;
      }

      final content = await readAsString();
      return jsonDecode(content) as Map<String, dynamic>;
    } catch (e) {
      return null;
    }
  }

  /// Safely reads the entire file contents as a list of bytes.
  ///
  /// This is a safe wrapper around [readAsBytes()] that handles file existence
  /// and read errors gracefully. It is suitable for loading image or audio data.
  ///
  /// **WARNING:** Avoid calling this on the main thread for very large files.
  ///
  /// @returns A [Future<Uint8List?>] that completes with the file bytes.
  /// Returns `null` if the file is not found or cannot be read.
  ///
  /// Example:
  /// ```dart
  /// final imageBytes = await File('photo.jpg').readAsBytesSafe();
  /// if (imageBytes != null) {
  ///   // Use the bytes to create an Image.memory widget
  /// }
  /// ```
  Future<Uint8List?> readAsBytesSafe() async {
    try {
      if (!await exists()) {
        return null;
      }

      final content = await readAsBytes();
      return content;
    } catch (e) {
      return null;
    }
  }

  /// Safely gets the file's synchronous length without throwing an exception.
  ///
  /// This getter is a robust wrapper around [lengthSync()], preventing crashes
  /// if the file is deleted or becomes inaccessible between checks.
  ///
  /// @returns An [int] representing the file size in bytes. Returns `0` if the
  /// file does not exist, cannot be accessed, or if an exception occurs.
  ///
  /// Example:
  /// ```dart
  /// // Safe to call inside a loop or initialization code
  /// final size = File('temp.log').lengthSyncSafe;
  /// if (size > 1000) {
  ///   print('File is big.');
  /// }
  /// ```
  int? get lengthSyncSafe {
    try {
      return lengthSync();
    } catch (e) {
      return null;
    }
  }

  /// Safely gets the file's synchronous last modified timestamp without throwing an exception.
  ///
  /// This getter is a robust wrapper around [lastModifiedSync()], preventing crashes
  /// if the file is inaccessible. It provides a reliable fallback for time-based logic.
  ///
  /// @returns A [DateTime] object representing the last modification time. Returns
  /// `DateTime.fromMillisecondsSinceEpoch(0)` (the Unix Epoch start: 1970-01-01)
  /// if the file does not exist or cannot be accessed.
  ///
  /// Example:
  /// ```dart
  /// final lastChange = File('cache.json').lastModifiedSyncSafe;
  /// if (lastChange.year == 1970) {
  ///   print('Could not determine modification date.');
  /// }
  /// ```
  DateTime? get lastModifiedSyncSafe {
    try {
      return lastModifiedSync();
    } catch (e) {
      return null; // Epoch start as safe fallback
    }
  }

  /// Checks if two [File] objects point to the same file location on the filesystem.
  ///
  /// This accounts for potential differences between relative and absolute paths
  /// by checking both the raw [path] and the resolved [absolute.path].
  ///
  /// @param other The other [File] object to compare against.
  /// @returns [bool] `true` if the paths match, indicating they are the same file; otherwise `false`.
  ///
  /// Example:
  /// ```dart
  /// final fileA = File('data.txt');
  /// final fileB = File('./data.txt').absolute;
  /// print(fileA.isSameFile(fileB)); // Likely true
  /// ```
  bool isSameFile(File other) =>
      path == other.path || absolute.path == other.absolute.path;
}
