part of 'review_cubit.dart';

@immutable
sealed class ReviewCubitState extends Equatable {
  final ValidationMap validation;

  const ReviewCubitState(this.validation);

  @override
  List<Object?> get props => [validation];
}

final class ReviewLoadingState extends ReviewCubitState {
  const ReviewLoadingState() : super(ValidationMap.empty);
}

final class ReviewLoadingFailedState extends ReviewCubitState {
  const ReviewLoadingFailedState(super.validation);
}

final class ReviewLoadedState extends ReviewCubitState {
  final Review review;
  final List<Experience> experiences;

  const ReviewLoadedState({
    required this.review,
    required this.experiences,
    ValidationMap? validation,
  }) : super(validation ?? ValidationMap.empty);
}

final class ReviewUpdatedState extends ReviewLoadedState {
  const ReviewUpdatedState({required super.review, required super.experiences});
}

final class ReviewUpdateFailedState extends ReviewLoadedState {
  const ReviewUpdateFailedState({
    required super.review,
    required super.validation,
    required super.experiences,
  });
}
