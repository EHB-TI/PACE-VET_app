import 'package:bloc/bloc.dart';
import 'package:contextual_logging/contextual_logging.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:pace_vet/shared/models/validation_map.dart';
import 'package:pace_vet_api/pace_vet_api.dart';

part 'review_state.dart';

class ReviewCubit extends Cubit<ReviewCubitState> with ContextualLogger {
  final PaceVetApi _api;
  final int assessment;
  final int reviewId;

  ReviewCubit(
    this._api, {
    required this.assessment,
    required this.reviewId,
  }) : super(const ReviewLoadingState()) {
    reload();
  }

  Future reload() async {
    emit(const ReviewLoadingState());

    try {
      final response = await _api
          .getAssessmentsApi()
          .paceVetWebApiV1AssessmentsControllerShow(id: assessment);

      if (response.data != null) {
        final review = response.data!.reviews!
            .firstWhere((review) => review.id == reviewId);

        final experiences = await _loadExperiences(review.competence!);
        return emit(
            ReviewLoadedState(review: review, experiences: experiences));
      }
    } catch (error, stackTrace) {
      log.e(
        'An error occured while loading $reviewId',
        error: error,
        stackTrace: stackTrace,
      );

      final validation = ValidationMap.fromError(error);
      emit(ReviewLoadingFailedState(validation));
    }
  }

  Future update(Review review, ReviewState state, String comment) async {
    emit(const ReviewLoadingState());
    final experiences = (state as ReviewLoadedState).experiences;

    try {
      final request = UpdateReviewRequestBuilder()
        ..comment = comment
        ..state = state;

      final response = await _api
          .getAssessmentsApi()
          .paceVetWebApiV1AssessmentsControllerReview(
            id: assessment,
            review: reviewId,
            updateReviewRequest: request.build(),
          );

      if (response.data != null) {
        final review = response.data!;
        final experiences = await _loadExperiences(review.competence!);
        return emit(
            ReviewUpdatedState(review: review, experiences: experiences));
      }
    } catch (error, stackTrace) {
      log.e(
        'An error occured reviewing $reviewId',
        error: error,
        stackTrace: stackTrace,
      );

      final validation = ValidationMap.fromError(error);
      emit(ReviewUpdateFailedState(
        validation: validation,
        review: review,
        experiences: experiences,
      ));
    }
  }

  Future<List<Experience>> _loadExperiences(Competence competence) async {
    final response = await _api
        .getPortfolioApi()
        .paceVetWebApiV1ExperiencesControllerForCompetence(
            competence: competence.key!);

    return response.data?.toList() ?? [];
  }
}
