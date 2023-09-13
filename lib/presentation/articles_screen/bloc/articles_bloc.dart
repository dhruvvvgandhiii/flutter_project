import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '/core/app_export.dart';

part 'articles_event.dart';
part 'articles_state.dart';

/// A bloc that manages the state of a Articles according to the event that is dispatched to it.
class ArticlesBloc extends Bloc<ArticlesEvent, ArticlesState> {
  ArticlesBloc(ArticlesState initialState) : super(initialState) {
    on<ArticlesInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ArticlesInitialEvent event,
    Emitter<ArticlesState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
  }
}
