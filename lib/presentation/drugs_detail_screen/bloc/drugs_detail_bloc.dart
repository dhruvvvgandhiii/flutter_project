import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '/core/app_export.dart';

part 'drugs_detail_event.dart';
part 'drugs_detail_state.dart';

/// A bloc that manages the state of a DrugsDetail according to the event that is dispatched to it.
class DrugsDetailBloc extends Bloc<DrugsDetailEvent, DrugsDetailState> {
  DrugsDetailBloc(DrugsDetailState initialState) : super(initialState) {
    on<DrugsDetailInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DrugsDetailInitialEvent event,
    Emitter<DrugsDetailState> emit,
  ) async {}
}
