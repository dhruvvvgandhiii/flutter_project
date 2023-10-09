import 'isValidEmail.welltested_test.mocks.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:helthio_app/core/utils/validation_functions.dart';

@GenerateMocks([])
void main() {
  group('isValidEmail', () {
    test('returns false when inputString is null and isRequired is true', () {
      expect(isValidEmail(null, isRequired: true), false);
    });

    test('returns true when inputString is null and isRequired is false', () {
      expect(isValidEmail(null, isRequired: false), true);
    });

    test('returns true when inputString is empty and isRequired is false', () {
      expect(isValidEmail('', isRequired: false), true);
    });

    test('returns false when inputString is empty and isRequired is true', () {
      expect(isValidEmail('', isRequired: true), false);
    });

    test('returns false when inputString is not a valid email', () {
      expect(isValidEmail('not a valid email'), false);
    });

    test('returns true when inputString is a valid email', () {
      expect(isValidEmail('test@example.com'), true);
    });

    test('returns false when inputString is a valid email but has extra spaces', () {
      expect(isValidEmail(' test@example.com '), false);
    });

    test('returns false when inputString is a valid email but has uppercase letters', () {
      expect(isValidEmail('TEST@EXAMPLE.COM'), false);
    });
  });
}