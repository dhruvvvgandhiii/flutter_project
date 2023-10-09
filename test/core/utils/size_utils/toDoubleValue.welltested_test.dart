import 'toDoubleValue.welltested_test.mocks.dart';import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:helthio_app/core/utils/size_utils.dart';

@GenerateMocks([MediaQueryData])
void main() {
  group('FormatExtension', () {
    test('toDoubleValue should return correct value with default fractionDigits', () {
      final double value = 123.456789;
      final expectedValue = 123.46;

      final result = value.toDoubleValue();

      expect(result, expectedValue);
    });

    test('toDoubleValue should return correct value with custom fractionDigits', () {
      final double value = 123.456789;
      final expectedValue = 123.457;

      final result = value.toDoubleValue(fractionDigits: 3);

      expect(result, expectedValue);
    });

    test('toDoubleValue should handle zero correctly', () {
      final double value = 0.0;
      final expectedValue = 0.0;

      final result = value.toDoubleValue();

      expect(result, expectedValue);
    });

    test('toDoubleValue should handle negative values correctly', () {
      final double value = -123.456789;
      final expectedValue = -123.46;

      final result = value.toDoubleValue();

      expect(result, expectedValue);
    });

    test('toDoubleValue should handle large values correctly', () {
      final double value = 123456789.123456789;
      final expectedValue = 123456789.12;

      final result = value.toDoubleValue();

      expect(result, expectedValue);
    });
  });
}