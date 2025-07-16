part of '../flutter_extend.dart';

extension ValidationStringExtensions on String {
  /// Check if Email is Valid
  bool isEmailValid() {
    final bool isEmailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(this);

    return isEmailValid;
  }

  /// Check if password is valid
  bool isPasswordValid({
    int minLength = 8,
    int minUppercase = 1,
    int minNumbers = 1,
    int minSpecialChars = 1,
  }) {
    if (length < minLength) return false;

    int uppercaseCount = RegExp(r'[A-Z]').allMatches(this).length;
    int numberCount = RegExp(r'\d').allMatches(this).length;
    int specialCharCount =
        RegExp(r'[!@#\$%^&*(),.?":{}|<>]').allMatches(this).length;

    return uppercaseCount >= minUppercase &&
        numberCount >= minNumbers &&
        specialCharCount >= minSpecialChars;
  }

  /// Check if String is a valid URL
  bool isValidURL() {
    final bool isValidURL = RegExp(
            r'^(http:\/\/www\.|https:\/\/www\.|http:\/\/|https:\/\/)?[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$')
        .hasMatch(this);

    return isValidURL;
  }

  /// Check if String is a valid JWT
  bool isValidJWT() {
    if (isEmpty) return false;

    // A valid JWT should have atleast 2 parts. Standard have 3 parts.
    if (split('.').length < 2) return false;

    // Decode token.
    final decodedList = base64Url.decode(base64Url.normalize(split(".")[1]));
    final payloadMap = utf8.decode(decodedList);

    Map<String, dynamic> map = json.decode(payloadMap);

    // Check if it has exp value.
    if (map['exp'] == null) return false;
    final expiry = DateTime.fromMillisecondsSinceEpoch(map['exp'] * 1000);

    // Check if the token is expired
    return expiry.isFuture();
  }
}
