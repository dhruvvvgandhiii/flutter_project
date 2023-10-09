import 'isValidPassword.welltested_test.mocks.dart';import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:helthio_app/core/utils/validation_functions.dart';

@GenerateMocks([])
void main() {
  group('isValidPassword', () {
    test('returns false when inputString is null and isRequired is true', () {
      expect(isValidPassword(null, isRequired: true), false);
    });

    test('returns true when inputString is null and isRequired is false', () {
      expect(isValidPassword(null, isRequired: false), true);
    });

    test('returns true when inputString is empty and isRequired is false', () {
      expect(isValidPassword('', isRequired: false), true);
    });

    test('returns false when inputString is empty and isRequired is true', () {
      expect(isValidPassword('', isRequired: true), false);
    });

    test('returns false when inputString is less than 8 characters', () {
      expect(isValidPassword('Ab1#', isRequired: true), false);
    });

    test('returns false when inputString does not contain at least one uppercase letter', () {
      expect(isValidPassword('abc123#', isRequired: true), false);
    });

    test('returns false when inputString does not contain at least one lowercase letter', () {
      expect(isValidPassword('ABC123#', isRequired: true), false);
    });

    test('returns false when inputString does not contain at least one digit', () {
      expect(isValidPassword('Abcdef#', isRequired: true), false);
    });

    test('returns false when inputString does not contain at least one special character', () {
      expect(isValidPassword('Abcdef1', isRequired: true), false);
    });

    test('returns true when inputString meets all password requirements', () {
      expect(isValidPassword('Abcdef1#', isRequired: true), true);
    });
  });
}