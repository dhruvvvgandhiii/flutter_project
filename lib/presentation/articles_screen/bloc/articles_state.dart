// ignore_for_file: must_be_immutable

part of 'articles_bloc.dart';

/// Represents the state of Articles in the application.
class ArticlesState extends Equatable {
  ArticlesState({
    this.searchController,
  });

  TextEditingController? searchController;

  @override
  List<Object?> get props => [
        searchController,
      ];
  ArticlesState copyWith({
    TextEditingController? searchController,
  }) {
    return ArticlesState(
      searchController: searchController ?? this.searchController,
    );
  }
}
