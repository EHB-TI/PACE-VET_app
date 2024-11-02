part of 'assessment_cubit.dart';

@immutable
sealed class AssessmentState {}

final class AssessmentLoadingState extends AssessmentState {}

final class AssessmentLoadedState extends AssessmentState {
  final Assessment assessment;

  AssessmentLoadedState({required this.assessment});
}

final class AssessmentFailedToLoadState extends AssessmentState {
  //
}

final class NoAssessmentState extends AssessmentState {
  final List<User> users;
  final List<Competence> competences;
  final ValidationMap validation;

  NoAssessmentState({
    required this.users,
    required this.competences,
    required this.validation,
  });
}

final class AssessmentCreatedState extends AssessmentState {
  //
}

final class AssessmentCreationFailedState extends NoAssessmentState {
  AssessmentCreationFailedState({
    required super.users,
    required super.competences,
    required super.validation,
  });
}
