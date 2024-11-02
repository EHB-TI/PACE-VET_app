import 'package:bloc/bloc.dart';
import 'package:contextual_logging/contextual_logging.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:pace_vet/features/auth/bloc/auth/auth_bloc.dart';
import 'package:pace_vet/features/auth/extensions/user_extensions.dart';
import 'package:pace_vet_api/pace_vet_api.dart';

part 'assessments_state.dart';

class AssessmentsCubit extends Cubit<AssessmentsState> with ContextualLogger {
  final AuthBloc _auth;
  final PaceVetApi _api;

  AssessmentsCubit(this._auth, this._api) : super(AssessmentsLoadingState()) {
    reload();
  }

  Future reload() async {
    emit(AssessmentsLoadingState());

    try {
      final type = (_auth.state as AuthSignedInState)
              .user
              .hasUserType(UserType.candidate)
          ? 'candidate'
          : 'assessor';

      final response = await _api
          .getAssessmentsApi()
          .paceVetWebApiV1AssessmentsControllerIndex(type: type);

      if (response.data != null) {
        emit(AssessmentsLoadedState(assessments: response.data!.asList()));
      }
    } catch (error, stackTrace) {
      log.e(
        'Failed to load assessments',
        error: error,
        stackTrace: stackTrace,
      );
    }
  }
}
