import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '/core/app_export.dart';

part 'apportionment_list_event.dart';
part 'apportionment_list_state.dart';

/// A bloc that manages the state of a ApportionmentList according to the event that is dispatched to it.
class ApportionmentListBloc
    extends Bloc<ApportionmentListEvent, ApportionmentListState> {
  ApportionmentListBloc(ApportionmentListState initialState)
      : super(initialState) {
    on<ApportionmentListInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ApportionmentListInitialEvent event,
    Emitter<ApportionmentListState> emit,
  ) async {}
}
