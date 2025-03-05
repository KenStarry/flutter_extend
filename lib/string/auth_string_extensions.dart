part of '../flutter_extend.dart';

extension AuthStringExtensions on String {
  /// Check if Email is Valid
  bool isEmailValid() {
    final bool isEmailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(this);

    return isEmailValid;
  }

  /// Check if password is valid
  bool isPasswordValid(
      String password, {
        int minLength = 8,
        int minUppercase = 1,
        int minNumbers = 1,
        int minSpecialChars = 1,
      }) {
    if (password.length < minLength) return false;

    int uppercaseCount = RegExp(r'[A-Z]').allMatches(password).length;
    int numberCount = RegExp(r'\d').allMatches(password).length;
    int specialCharCount = RegExp(r'[!@#\$%^&*(),.?":{}|<>]').allMatches(password).length;

    return uppercaseCount >= minUppercase &&
        numberCount >= minNumbers &&
        specialCharCount >= minSpecialChars;
  }
}
