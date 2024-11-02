part of '../routes.dart';

@TypedGoRoute<AttachmentRoute>(
  path: '/portfolio/show/:experienceId/:attachmentId',
)
class AttachmentRoute extends GoRouteData {
  final int experienceId;
  final int attachmentId;

  AttachmentRoute({required this.experienceId, required this.attachmentId});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BlocProvider(
      create: (context) => AttachmentCubit(
        context.read<PaceVetApi>(),
        experienceId: experienceId,
        attachmentId: attachmentId,
      ),
      child: AttachmentScreen(
        experienceId: experienceId,
        attachmentId: attachmentId,
      ),
    );
  }
}
