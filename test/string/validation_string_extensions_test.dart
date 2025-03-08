import 'package:flutter_extend/flutter_extend.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Is Email Valid", () {
    test("Email without domain should be invalid", () {
      final email = "test";
      final isValid = email.isEmailValid();
      expect(isValid, false);
    });

    test("Email without @ should be invalid", () {
      final email = "test.com";
      final isValid = email.isEmailValid();
      expect(isValid, false);
    });

    test("Email without .com should be invalid", () {
      final email = "test@test";
      final isValid = email.isEmailValid();
      expect(isValid, false);
    });

    test("Email with @ and .com should be valid", () {
      final email = "test@gmail.com";
      final isValid = email.isEmailValid();
      expect(isValid, true);
    });
  });

  group("Is Password Valid", () {

    group("Minimum Length", (){
      test("Password with less than 8 characters should be invalid", () {
        final password = "Test1";
        final isValid = password.isPasswordValid(minLength: 8);
        expect(isValid, false);
      });

      test("Password with 8 characters should be valid", () {
        final password = "Test1@12";
        final isValid = password.isPasswordValid(minLength: 8);
        expect(isValid, true);
      });

      test("Password with more than 8 characters should be valid", () {
        final password = "Test1@12657567567464";
        final isValid = password.isPasswordValid(minLength: 8);
        expect(isValid, true);
      });
    });

    group("Minimum Uppercase", (){
      test("Password with less than 1 uppercase should be invalid", () {
        final password = "test1@";
        final isValid = password.isPasswordValid(minLength: 4, minUppercase: 1);
        expect(isValid, false);
      });

      test("Password with less than 3 uppercase should be invalid", () {
        final password = "testSD1@";
        final isValid = password.isPasswordValid(minLength: 4, minUppercase: 3);
        expect(isValid, false);
      });

      test("Password with 1 uppercase should be valid", () {
        final password = "Test1@";
        final isValid = password.isPasswordValid(minLength: 4, minUppercase: 1);
        expect(isValid, true);
      });

      test("Password with more than 1 uppercase should be valid", () {
        final password = "Test1@A";
        final isValid = password.isPasswordValid(minLength: 4, minUppercase: 1);
        expect(isValid, true);
      });
    });

    group("Minimum Number", (){
      test("Password with no number should be invalid", () {
        final password = "Test@";
        final isValid = password.isPasswordValid(minLength: 4, minUppercase: 1);
        expect(isValid, false);
      });

      test("Password with expected minimum numbers should be valid", () {
        final password = "Test@12345";
        final isValid = password.isPasswordValid(minLength: 4, minNumbers: 5, minUppercase: 1);
        expect(isValid, true);
      });
    });

    group("Special Characters", (){
      test("Password with no special character should be invalid", () {
        final password = "Test123";
        final isValid = password.isPasswordValid(minLength: 4, minUppercase: 1, minSpecialChars: 2);
        expect(isValid, false);
      });
      test("Password with less special characters should be invalid", () {
        final password = "Test123#";
        final isValid = password.isPasswordValid(minLength: 4, minUppercase: 1, minSpecialChars: 2);
        expect(isValid, false);
      });
    });

    test("Password with all requirements should be valid", () {
      final password = "TeFDGGSEdfdst1234@%";
      final isValid = password.isPasswordValid(minLength: 6, minNumbers: 3, minSpecialChars: 2, minUppercase: 4);
      expect(isValid, true);
    });
  });
}
