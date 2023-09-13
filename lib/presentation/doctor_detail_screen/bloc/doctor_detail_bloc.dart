import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '/core/app_export.dart';

part 'doctor_detail_event.dart';
part 'doctor_detail_state.dart';

/// A bloc that manages the state of a DoctorDetail according to the event that is dispatched to it.
class DoctorDetailBloc extends Bloc<DoctorDetailEvent, DoctorDetailState> {
  DoctorDetailBloc(DoctorDetailState initialState) : super(initialState) {
    on<DoctorDetailInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _onInitialize(
    DoctorDetailInitialEvent event,
    Emitter<DoctorDetailState> emit,
  ) async {}

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<DoctorDetailState> emit,
  ) {}
}
