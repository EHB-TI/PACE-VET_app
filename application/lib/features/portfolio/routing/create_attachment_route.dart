part of '../routes.dart';

@TypedGoRoute<CreateAttachmentRoute>(
  path: '/portfolio/create/:experienceId',
)
class CreateAttachmentRoute extends GoRouteData {
  final int experienceId;

  CreateAttachmentRoute({required this.experienceId});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BlocProvider(
      create: (context) => AttachmentCubit(
        context.read<PaceVetApi>(),
        experienceId: experienceId,
      ),
      child: const CreateAttachmentScreen(),
    );
  }
}
