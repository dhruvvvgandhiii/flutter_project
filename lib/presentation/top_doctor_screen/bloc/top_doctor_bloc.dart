import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '/core/app_export.dart';

part 'top_doctor_event.dart';
part 'top_doctor_state.dart';

/// A bloc that manages the state of a TopDoctor according to the event that is dispatched to it.
class TopDoctorBloc extends Bloc<TopDoctorEvent, TopDoctorState> {
  TopDoctorBloc(TopDoctorState initialState) : super(initialState) {
    on<TopDoctorInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TopDoctorInitialEvent event,
    Emitter<TopDoctorState> emit,
  ) async {}
}
