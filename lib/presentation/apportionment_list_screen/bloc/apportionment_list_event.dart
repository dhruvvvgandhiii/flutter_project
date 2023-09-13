// ignore_for_file: must_be_immutable

part of 'apportionment_list_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ApportionmentList widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ApportionmentListEvent extends Equatable {}

/// Event that is dispatched when the ApportionmentList widget is first created.
class ApportionmentListInitialEvent extends ApportionmentListEvent {
  @override
  List<Object?> get props => [];
}
