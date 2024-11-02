import 'package:bloc/bloc.dart';
import 'package:contextual_logging/contextual_logging.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';
import 'package:mime_type/mime_type.dart';
import 'package:pace_vet/shared/models/error_message.dart';
import 'package:pace_vet/shared/models/validation_map.dart';
import 'package:pace_vet_api/pace_vet_api.dart';

part 'attachment_state.dart';

class AttachmentCubit extends Cubit<AttachmentState> with ContextualLogger {
  final int experienceId;
  final int? attachmentId;
  final PaceVetApi _api;

  AttachmentCubit(
    this._api, {
    required this.experienceId,
    this.attachmentId,
  }) : super(const AttachmentLoadingState()) {
    reload();
  }

  Future reload() async {
    emit(const AttachmentLoadingState());

    try {
      final response = await _api
          .getPortfolioApi()
          .paceVetWebApiV1ExperiencesControllerShow(id: experienceId);

      if (attachmentId == null) {
        return emit(NoAttachmentState(
          response.data!,
          ValidationMap.empty,
          ErrorMessage.empty,
        ));
      }

      final attachment =
          response.data?.attachments?.firstWhere((a) => a.id == attachmentId);

      if (attachment != null) {
        emit(AttachmentLoadedState(null, null, attachment: attachment));
      }
    } catch (error, stackTrace) {
      log.e(
        'An error occured loading attachment',
        error: error,
        stackTrace: stackTrace,
      );

      emit(AttachmentFailedToLoadState(
        ValidationMap.fromError(error),
        ErrorMessage.fromThrown(error),
      ));
    }
  }

  Future update(String description, XFile? file) async {
    final attachment = (state as AttachmentLoadedState).attachment;
    emit(const AttachmentLoadingState());

    try {
      final bytes = await file?.readAsBytes();
      final upload = bytes == null
          ? null
          : MultipartFile.fromBytes(
              bytes,
              filename: file?.name,
              headers: {
                "content-type": [
                  file?.mimeType ??
                      mime(file?.name) ??
                      'application/octet-stream'
                ]
              },
            );

      final response = await _api
          .getPortfolioApi()
          .paceVetWebApiV1AttachmentsControllerUpdate(
            description: description,
            upload: upload,
            experience: experienceId,
            attachment: attachmentId!,
          );

      if (response.data != null) {
        emit(AttachmentUpdatedState(
          ValidationMap.empty,
          ErrorMessage.empty,
          attachment: response.data!,
        ));
      }
    } catch (error) {
      emit(AttachmentUpdateFailedState(
        ValidationMap.fromError(error),
        ErrorMessage.fromThrown(error),
        attachment: attachment,
      ));
    }
  }

  Future create({
    required Experience experience,
    required String description,
    required List<Competence> competences,
    required XFile file,
  }) async {
    emit(const AttachmentLoadingState());

    try {
      final bytes = await file.readAsBytes();
      final upload = MultipartFile.fromBytes(
        bytes,
        filename: file.name,
        headers: {
          "content-type": [
            file.mimeType ?? mime(file.name) ?? 'application/octet-stream'
          ]
        },
      );

      final competenceKeys =
          competences.map((competence) => competence.key!).join(',');
      final response = await _api
          .getPortfolioApi()
          .paceVetWebApiV1AttachmentsControllerCreate(
            id: experienceId,
            competences: competenceKeys,
            description: description,
            upload: upload,
          );

      if (response.data != null) {
        return emit(AttachmentCreatedState(
          ValidationMap.empty,
          ErrorMessage.empty,
          attachment: response.data!,
        ));
      }
    } catch (error, stackTrace) {
      final validation = ValidationMap.fromError(error);
      final message = ErrorMessage.fromThrown(error);

      emit(AttachmentCreateFailedState(experience, validation, message));

      log.e(
        'An error occured while creating attachment for $experienceId',
        error: error,
        stackTrace: stackTrace,
      );
    }
  }
}
