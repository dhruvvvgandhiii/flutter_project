import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '/core/app_export.dart';

part 'find_doctors_event.dart';
part 'find_doctors_state.dart';

/// A bloc that manages the state of a FindDoctors according to the event that is dispatched to it.
class FindDoctorsBloc extends Bloc<FindDoctorsEvent, FindDoctorsState> {
  FindDoctorsBloc(FindDoctorsState initialState) : super(initialState) {
    on<FindDoctorsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FindDoctorsInitialEvent event,
    Emitter<FindDoctorsState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
  }
}
