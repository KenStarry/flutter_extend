part of '../flutter_extend.dart';

extension AuthStringExtensions on String {
  /// Check if Email is Valid
  bool get szCheckEmailIsValid {
    final bool isEmailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(this);

    return isEmailValid;
  }

  /// Check if password is valid
}
