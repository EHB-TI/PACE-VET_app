import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pace_vet_api/pace_vet_api.dart';

part 'competences_state.dart';

class CompetencesCubit extends Cubit<CompetencesState> {
  final PaceVetApi _api;

  CompetencesCubit(this._api) : super(CompetencesLoadingState()) {
    reload();
  }

  Future reload() async {
    emit(CompetencesLoadingState());

    final response = await _api
        .getCompetencesApi()
        .paceVetWebApiV1CompetencesControllerIndex();

    emit(CompetencesLoadedState(
      categories: response.data?.toList() ?? [],
    ));
  }
}
