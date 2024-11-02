import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pace_vet/features/portfolio/constants.dart';
import 'package:pace_vet/features/portfolio/cubit/experience/experience_cubit.dart';
import 'package:pace_vet/features/portfolio/routes.dart';
import 'package:pace_vet/shared/widgets/cached_network_image.dart';
import 'package:pace_vet/shared/widgets/confirmation_dialog.dart';
import 'package:pace_vet/shared/widgets/user_layout.dart';
import 'package:pace_vet_api/pace_vet_api.dart';

final _controller = PageController(viewportFraction: 0.8);

class ExperienceScreen extends StatelessWidget {
  const ExperienceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ExperienceCubit, ExperienceState>(
      listenWhen: (previous, current) => current is ExperienceRemovedState,
      listener: (context, state) {
        context.pop();
      },
      builder: (context, state) {
        if (state is ExperienceLoadedState) {
          return UserLayout(
            appBar: AppBar(
              actions: [
                IconButton(
                  onPressed: () async {
                    if ((await showConfirmationDialog(
                                context,
                                Text(
                                    'Are you sure you want to remove this ${state.experience.type}? This will also remove all associated assessments')) ??
                            false) &&
                        context.mounted) {
                      context.read<ExperienceCubit>().remove();
                    }
                  },
                  icon: const Icon(Icons.delete),
                )
              ],
            ),
            floatingActionButton: FloatingActionButton.small(
              child: const Icon(Icons.edit),
              onPressed: () async {
                await EditExperienceRoute(
                  id: state.experience.id!,
                ).push(context);

                if (context.mounted) {
                  context.read<ExperienceCubit>().reload();
                }
              },
            ),
            renderNavigation: false,
            child: _buildExperience(context, state.experience),
          );
        } else if (state is ExperienceFailedToLoadState) {
          return UserLayout(
            child: _buildFailedToLoad(context, state),
          );
        }

        return UserLayout.loading();
      },
    );
  }

  Widget _buildFailedToLoad(BuildContext context, ExperienceState state) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Failed to load'),
          IconButton(
            onPressed: () => context.read<ExperienceCubit>().reload(),
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
    );
  }

  Widget _buildExperience(BuildContext context, Experience experience) {
    final attachments = experience.attachments?.asList() ?? [];

    return RefreshIndicator.adaptive(
      onRefresh: () => context.read<ExperienceCubit>().reload(),
      child: ListView(
        padding: const EdgeInsets.only(
          left: 12.0,
          right: 12.0,
          top: 12.0,
        ),
        children: [
          AspectRatio(
            aspectRatio: 1.5,
            child: Hero(
              tag: experienceHero,
              child: PageView.builder(
                controller: _controller,
                itemCount: attachments.length + 1,
                itemBuilder: (context, index) {
                  final attachment = attachments.elementAtOrNull(index);

                  if (attachment != null) {
                    return _buildAttachment(context, experience, attachment);
                  }

                  return _buildAddAttachment(context, experience);
                },
              ),
            ),
          ),
          const SizedBox(height: 12.0),
          Text(
            experience.title ?? '',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Text(
            experience.location ?? '',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(height: 24.0),
          Text(
            'Description',
            style: Theme.of(context).textTheme.labelLarge,
          ),
          Text(
            experience.description ?? '',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }

  Widget _buildAttachment(
      BuildContext context, Experience experience, Attachment attachment) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: CachedNetworkImage(
            imageUrl: attachment.preview!,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: IconButton.outlined(
            onPressed: () => AttachmentRoute(
              experienceId: experience.id!,
              attachmentId: attachment.id!,
            ).push(context),
            icon: const Icon(Icons.zoom_out_map),
          ),
        )
      ],
    );
  }

  Widget _buildAddAttachment(BuildContext context, Experience experience) {
    return IconButton.filledTonal(
      onPressed: () async {
        await CreateAttachmentRoute(
          experienceId: experience.id!,
        ).push(context);

        if (context.mounted) {
          context.read<ExperienceCubit>().reload();
        }
      },
      icon: const Icon(Icons.add_box_outlined),
    );
  }
}
