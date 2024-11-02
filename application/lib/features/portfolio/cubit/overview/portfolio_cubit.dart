import 'package:bloc/bloc.dart';
import 'package:contextual_logging/contextual_logging.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:pace_vet_api/pace_vet_api.dart';

part 'portfolio_state.dart';

class PortfolioCubit extends Cubit<PortfolioState> with ContextualLogger {
  final PaceVetApi _api;
  final String? competenceKey;

  PortfolioCubit(
    this._api, {
    this.competenceKey,
  }) : super(PortfolioLoadingState()) {
    reload();
  }

  Future reload() async {
    try {
      final experiences = await _getExperiences();

      emit(PortfolioLoadedState(experiences: experiences));
    } catch (error, stackTrace) {
      emit(PortfolioFailedToLoadState());
      log.e(
        'An error occured while reloading portfolio',
        error: error,
        stackTrace: stackTrace,
      );
    }
  }

  Future<List<Experience>> _getExperiences() async {
    if (competenceKey == null) {
      final response = await _api
          .getPortfolioApi()
          .paceVetWebApiV1ExperiencesControllerIndex();

      return response.data?.toList() ?? [];
    }

    final response = await _api
        .getPortfolioApi()
        .paceVetWebApiV1ExperiencesControllerForCompetence(
          competence: competenceKey!,
        );

    return response.data?.toList() ?? [];
  }
}
