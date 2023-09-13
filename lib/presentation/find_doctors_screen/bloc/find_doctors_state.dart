// ignore_for_file: must_be_immutable

part of 'find_doctors_bloc.dart';

/// Represents the state of FindDoctors in the application.
class FindDoctorsState extends Equatable {
  FindDoctorsState({
    this.searchController,
  });

  TextEditingController? searchController;

  @override
  List<Object?> get props => [
        searchController,
      ];
  FindDoctorsState copyWith({
    TextEditingController? searchController,
  }) {
    return FindDoctorsState(
      searchController: searchController ?? this.searchController,
    );
  }
}
