part of '../routes.dart';

@TypedGoRoute<EditAttachmentRoute>(
  path: '/portfolio/edit/:experienceId/:attachmentId/edit',
)
class EditAttachmentRoute extends GoRouteData {
  final String experienceId;
  final String attachmentId;

  EditAttachmentRoute({required this.experienceId, required this.attachmentId});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    final experience = int.tryParse(experienceId);
    final attachment = int.tryParse(attachmentId);

    if (experience == null || attachment == null) {
      throw FlutterError('Invalid URL');
    }

    return BlocProvider(
      create: (context) => AttachmentCubit(
        context.read<PaceVetApi>(),
        experienceId: experience,
        attachmentId: attachment,
      ),
      child: const EditAttachmentScreen(),
    );
  }
}
