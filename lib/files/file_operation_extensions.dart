part of '../flutter_extend.dart';

extension FileOperationExtensions on File {
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
}
