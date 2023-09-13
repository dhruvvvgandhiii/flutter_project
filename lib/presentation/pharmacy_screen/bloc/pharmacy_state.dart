// ignore_for_file: must_be_immutable

part of 'pharmacy_bloc.dart';

/// Represents the state of Pharmacy in the application.
class PharmacyState extends Equatable {
  PharmacyState({
    this.searchController,
  });

  TextEditingController? searchController;

  @override
  List<Object?> get props => [
        searchController,
      ];
  PharmacyState copyWith({
    TextEditingController? searchController,
  }) {
    return PharmacyState(
      searchController: searchController ?? this.searchController,
    );
  }
}
