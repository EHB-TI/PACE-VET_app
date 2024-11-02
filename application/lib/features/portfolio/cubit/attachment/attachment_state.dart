part of 'attachment_cubit.dart';

@immutable
sealed class AttachmentState extends Equatable {
  final ValidationMap validation;
  final ErrorMessage error;

  const AttachmentState(ValidationMap? validation, ErrorMessage? error)
      : validation = validation ?? ValidationMap.empty,
        error = error ?? ErrorMessage.empty;

  @override
  List<Object?> get props => [validation, error];
}

final class AttachmentLoadingState extends AttachmentState {
  const AttachmentLoadingState()
      : super(ValidationMap.empty, ErrorMessage.empty);
}

final class AttachmentFailedToLoadState extends AttachmentState {
  const AttachmentFailedToLoadState(super.validation, super.error);
}

final class AttachmentLoadedState extends AttachmentState {
  final Attachment attachment;

  const AttachmentLoadedState(
    ValidationMap? validation,
    ErrorMessage? error, {
    required this.attachment,
  }) : super(validation ?? ValidationMap.empty, error ?? ErrorMessage.empty);

  @override
  List<Object?> get props => [attachment];
}

final class NoAttachmentState extends AttachmentState {
  final Experience experience;

  const NoAttachmentState(this.experience, super.validation, super.error);

  @override
  List<Object?> get props => [experience, validation, error];
}

final class AttachmentUpdateFailedState extends AttachmentLoadedState {
  const AttachmentUpdateFailedState(
    super.validation,
    super.error, {
    required super.attachment,
  });
}

final class AttachmentUpdatedState extends AttachmentLoadedState {
  const AttachmentUpdatedState(super.validation, super.error,
      {required super.attachment});
}

final class AttachmentCreatedState extends AttachmentLoadedState {
  const AttachmentCreatedState(super.validation, super.error,
      {required super.attachment});
}

final class AttachmentCreateFailedState extends NoAttachmentState {
  const AttachmentCreateFailedState(
      super.experience, super.validation, super.error);
}
