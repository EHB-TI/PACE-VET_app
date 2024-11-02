import 'package:bloc/bloc.dart';
import 'package:contextual_logging/contextual_logging.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:pace_vet/shared/models/error_message.dart';
import 'package:pace_vet/shared/models/validation_map.dart';
import 'package:pace_vet_api/pace_vet_api.dart';

part 'experience_state.dart';

class ExperienceCubit extends Cubit<ExperienceState> with ContextualLogger {
  final int? id;
  final PaceVetApi _api;

  ExperienceCubit(this.id, this._api) : super(const ExperienceLoadingState()) {
    reload();
  }

  Future reload() async {
    if (id == null) {
      return emit(const NoExperienceState(
        ValidationMap.empty,
        ErrorMessage.empty,
      ));
    }

    emit(const ExperienceLoadingState());

    try {
      final response = await _api
          .getPortfolioApi()
          .paceVetWebApiV1ExperiencesControllerShow(id: id!);

      final experience = response.data;
      if (experience != null) {
        return emit(ExperienceLoadedState(experience: experience));
      }
    } catch (error) {
      final validation = ValidationMap.fromError(error);
      final message = ErrorMessage.fromThrown(error);

      return emit(ExperienceFailedToLoadState(validation, message));
    }
  }

  Future update(String title, String location, String description) async {
    final current = (state as ExperienceLoadedState).experience;

    emit(const ExperienceLoadingState());
    final request = UpdateExperienceRequestBuilder()
      ..title = title
      ..location = location
      ..description = description;

    try {
      final response = await _api
          .getPortfolioApi()
          .paceVetWebApiV1ExperiencesControllerUpdate(
            id: current.id!,
            updateExperienceRequest: request.build(),
          );

      final experience = response.data;
      if (experience != null) {
        emit(ExperienceUpdatedState(experience: experience));
      }
    } catch (error) {
      final validation = ValidationMap.fromError(error);

      emit(ExperienceFailedToUpdateState(
        experience: current,
        validation: validation,
        error: ErrorMessage.fromThrown(error),
      ));
    }
  }

  Future create({
    required String title,
    required String location,
    required String description,
    required DateTime start,
    required DateTime end,
  }) async {
    emit(const ExperienceLoadingState());

    try {
      final request = CreateExperienceRequestBuilder()
        ..type = CreateExperienceRequestTypeEnum.event
        ..title = title
        ..location = location
        ..description = description
        ..start = start.toUtc()
        ..end = end.toUtc();

      final response = await _api
          .getPortfolioApi()
          .paceVetWebApiV1ExperiencesControllerCreate(
            createExperienceRequest: request.build(),
          );

      if (response.data != null) {
        return emit(ExperienceCreatedState(experience: response.data!));
      }
    } catch (error, stackTrace) {
      log.e(
        'An error occured while creating experience',
        error: error,
        stackTrace: stackTrace,
      );

      final validation = ValidationMap.fromError(error);
      final message = ErrorMessage.fromThrown(error);

      emit(ExperienceFailedToCreateState(validation, message));
    }
  }

  Future remove() async {
    emit(const ExperienceLoadingState());

    await _api
        .getPortfolioApi()
        .paceVetWebApiV1ExperiencesControllerDelete(id: id!);

    emit(const ExperienceRemovedState(ValidationMap.empty, ErrorMessage.empty));
  }
}
