part of '../flutter_extend.dart';

extension FileOperationExtensions on File {
  Future<bool> deleteIfExists() async {
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
}
