part of 'assessments_cubit.dart';

@immutable
sealed class AssessmentsState extends Equatable {
  @override
  List<Object?> get props => const [];
}

final class AssessmentsLoadingState extends AssessmentsState {}

final class AssessmentsLoadedState extends AssessmentsState {
  final List<Assessment> assessments;

  AssessmentsLoadedState({required this.assessments});
}
