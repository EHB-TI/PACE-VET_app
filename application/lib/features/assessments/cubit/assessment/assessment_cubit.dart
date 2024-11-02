import 'package:bloc/bloc.dart';
import 'package:contextual_logging/contextual_logging.dart';
import 'package:meta/meta.dart';
import 'package:pace_vet/shared/models/validation_map.dart';
import 'package:pace_vet_api/pace_vet_api.dart';

part 'assessment_state.dart';

class AssessmentCubit extends Cubit<AssessmentState> with ContextualLogger {
  final PaceVetApi _api;
  final int? assessmentId;

  AssessmentCubit(
    this._api, {
    this.assessmentId,
  }) : super(AssessmentLoadingState()) {
    reload();
  }

  Future reload() {
    if (assessmentId == null) {
      return _loadNewAssessment();
    }

    return _reloadExistingAssessment();
  }

  Future _reloadExistingAssessment() async {
    emit(AssessmentLoadingState());

    try {
      final response = await _api
          .getAssessmentsApi()
          .paceVetWebApiV1AssessmentsControllerShow(id: assessmentId!);

      if (response.data != null) {
        return emit(AssessmentLoadedState(assessment: response.data!));
      }
    } catch (error, stackTrace) {
      log.e(
        'An error occurred while loading assessment $assessmentId',
        error: error,
        stackTrace: stackTrace,
      );
    }

    return emit(AssessmentFailedToLoadState());
  }

  Future _loadNewAssessment() async {
    emit(AssessmentLoadingState());

    try {
      final competencesResponse = await _api
          .getPortfolioApi()
          .paceVetWebApiV1ExperiencesControllerCompetences();

      final assessorsResponse =
          await _api.getAuthApi().paceVetWebApiV1AccountsControllerAssessors();

      final competences = competencesResponse.data!.toList();

      return emit(NoAssessmentState(
        users: assessorsResponse.data!.asList(),
        competences: competences,
        validation: ValidationMap.empty,
      ));
    } catch (error, stackTrace) {
      log.e(
        'An error occurred while loading experiences for assessments',
        error: error,
        stackTrace: stackTrace,
      );
    }
  }

  Future create(User user, List<Competence> competences) async {
    final state = (this.state as NoAssessmentState);

    try {
      final request = CreateAssessmentRequestBuilder()
        ..assessor = int.parse(user.id!);
      request.competences
          .addAll(competences.map((competence) => competence.key!));

      await _api.getAssessmentsApi().paceVetWebApiV1AssessmentsControllerCreate(
            createAssessmentRequest: request.build(),
          );

      emit(AssessmentCreatedState());
    } catch (error, stackTrace) {
      log.e(
        'An error occurred while creating new assessment',
        error: error,
        stackTrace: stackTrace,
      );

      emit(AssessmentCreationFailedState(
        users: state.users,
        competences: state.competences,
        validation: ValidationMap.fromError(error),
      ));
    }
  }
}
