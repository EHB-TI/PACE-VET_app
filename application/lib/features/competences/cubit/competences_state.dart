part of 'competences_cubit.dart';

@immutable
sealed class CompetencesState {}

final class CompetencesLoadingState extends CompetencesState {}

final class CompetencesLoadedState extends CompetencesState {
  final List<Category> categories;

  CompetencesLoadedState({required this.categories});
}
