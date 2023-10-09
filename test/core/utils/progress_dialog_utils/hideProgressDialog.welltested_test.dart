import 'hideProgressDialog.welltested_test.mocks.dart';import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:helthio_app/core/utils/progress_dialog_utils.dart';

@GenerateMocks([NavigatorState])
void main() {
  group('ProgressDialogUtils', () {
    test('hideProgressDialog when isProgressVisible is true', () {
      ProgressDialogUtils.isProgressVisible = true;
      final mockNavigatorState = MockNavigatorState();
      when(mockNavigatorState.overlay).thenReturn(Overlay.of(mockNavigatorState.context));

      ProgressDialogUtils.hideProgressDialog();

      verify(mockNavigatorState.pop()).called(1);
      expect(ProgressDialogUtils.isProgressVisible, false);
    });

    test('hideProgressDialog when isProgressVisible is false', () {
      ProgressDialogUtils.isProgressVisible = false;
      final mockNavigatorState = MockNavigatorState();

      ProgressDialogUtils.hideProgressDialog();

      verifyNever(mockNavigatorState.pop());
      expect(ProgressDialogUtils.isProgressVisible, false);
    });
  });
}