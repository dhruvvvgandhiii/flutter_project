// ignore_for_file: must_be_immutable

part of 'home_bloc.dart';

/// Represents the state of Home in the application.
class HomeState extends Equatable {
  HomeState({
    this.searchController,
    this.sliderIndex = 0,
  });

  TextEditingController? searchController;

  int sliderIndex;

  @override
  List<Object?> get props => [
        searchController,
        sliderIndex,
      ];
  HomeState copyWith({
    TextEditingController? searchController,
    int? sliderIndex,
  }) {
    return HomeState(
      searchController: searchController ?? this.searchController,
      sliderIndex: sliderIndex ?? this.sliderIndex,
    );
  }
}
