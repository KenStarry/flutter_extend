import 'dart:convert';

import 'package:flutter_extend/src/extensions/date_time/date_time_comparison_extensions.dart';

extension ValidationStringExtensions on String {
  /// Checks if the string conforms to a common email address format.
  ///
  /// This method uses a standard regular expression to validate the structure
  /// (user@domain.tld). Note that complex RFC 5322 edge cases may not be covered.
  ///
  /// @returns True if the string is a valid email format.
  ///
  /// Example:
  /// ```dart
  /// print('test@example.com'.isEmailValid()); // true
  /// print('test@example'.isEmailValid());     // false
  /// ```
  bool isEmailValid() {
    final bool isEmailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(this);

    return isEmailValid;
  }

  /// Checks if the string meets customizable password complexity requirements.
  ///
  /// @param minLength The minimum required length of the password (default: 8).
  /// @param minUppercase The minimum required number of uppercase letters (default: 1).
  /// @param minNumbers The minimum required number of numerical digits (default: 1).
  /// @param minSpecialChars The minimum required number of special characters
  ///                        (using a common set like !@#$%^&*, etc.) (default: 1).
  /// @returns True if all specified complexity criteria are met.
  ///
  /// Example (Standard Requirements):
  /// ```dart
  /// // Requires 8+ chars, 1+ uppercase, 1+ number, 1+ special char
  /// print('P@sswOrd1'.isPasswordValid()); // true
  /// print('password'.isPasswordValid());  // false (missing required caps/number/special)
  /// ```
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

  /// Checks if the string is a valid URL format.
  ///
  /// This validation covers common protocols (http, https, optional www) and top-level domains.
  ///
  /// @returns True if the string is a valid URL format.
  ///
  /// Example:
  /// ```dart
  /// print('[https://www.google.com](https://www.google.com)'.isValidURL()); // true
  /// print('google.com'.isValidURL());             // true (common format)
  /// print('www.example'.isValidURL());            // false (needs TLD)
  /// ```
  bool isValidURL() {
    final bool isValidURL = RegExp(
            r'^(http:\/\/www\.|https:\/\/www\.|http:\/\/|https:\/\/)?[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$')
        .hasMatch(this);

    return isValidURL;
  }

  /// Checks if the string is a valid, unexpired JSON Web Token (JWT).
  ///
  /// Validation steps:
  /// 1. Basic format check (at least two dot-separated parts).
  /// 2. Decodes the payload (second part) and verifies it's valid JSON.
  /// 3. Checks for the required `exp` (expiry time) field.
  /// 4. Ensures the token's expiry time is in the future.
  ///
  /// **Note:** This does NOT verify the signature (first part) for authenticity.
  ///
  /// @returns True if the JWT is structurally valid and not expired.
  ///
  /// Example:
  /// ```dart
  /// final validToken = 'header.payload.signature';
  /// print(validToken.isValidJWT()); // true (if exp is future)
  /// ```
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
