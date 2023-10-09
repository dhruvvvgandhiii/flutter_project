import 'showProgressDialog.welltested_test.mocks.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:helthio_app/core/utils/progress_dialog_utils.dart';

@GenerateMocks([BuildContext, GlobalKey, NavigatorState, OverlayState])
void main() {
  group('ProgressDialogUtils', () {
    test('showProgressDialog is not visible', () async {
      final mockContext = MockBuildContext();
      final mockNavigatorKey = MockGlobalKey<NavigatorState>();
      final mockNavigatorState = MockNavigatorState();
      final mockOverlayState = MockOverlayState();

      when(mockNavigatorKey.currentState).thenReturn(mockNavigatorState);
      when(mockNavigatorState.overlay).thenReturn(mockOverlayState);
      when(mockOverlayState.context).thenReturn(mockContext);

      ProgressDialogUtils.isProgressVisible = false;

      await ProgressDialogUtils.showProgressDialog(context: mockContext, isCancellable: false);

      verifyNever(showDialog(
        context: mockContext,
        barrierDismissible: false,
        builder: anyNamed('builder'),
      ));
    });

    test('showProgressDialog is visible', () async {
      final mockContext = MockBuildContext();
      final mockNavigatorKey = MockGlobalKey<NavigatorState>();
      final mockNavigatorState = MockNavigatorState();
      final mockOverlayState = MockOverlayState();

      when(mockNavigatorKey.currentState).thenReturn(mockNavigatorState);
      when(mockNavigatorState.overlay).thenReturn(mockOverlayState);
      when(mockOverlayState.context).thenReturn(mockContext);

      ProgressDialogUtils.isProgressVisible = true;

      await ProgressDialogUtils.showProgressDialog(context: mockContext, isCancellable: false);

      verify(showDialog(
        context: mockContext,
        barrierDismissible: false,
        builder: anyNamed('builder'),
      )).called(1);
    });

    test('showProgressDialog with null context', () async {
      ProgressDialogUtils.isProgressVisible = false;

      await ProgressDialogUtils.showProgressDialog(context: null, isCancellable: false);

      expect(ProgressDialogUtils.isProgressVisible, false);
    });
  });
}