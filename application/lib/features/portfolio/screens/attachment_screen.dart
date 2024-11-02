import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pace_vet/features/portfolio/constants.dart';
import 'package:pace_vet/features/portfolio/cubit/attachment/attachment_cubit.dart';
import 'package:pace_vet/features/portfolio/routes.dart';
import 'package:pace_vet/shared/widgets/cached_network_image.dart';
import 'package:pace_vet/shared/widgets/loading.dart';
import 'package:pace_vet/shared/widgets/user_layout.dart';
import 'package:pace_vet_api/pace_vet_api.dart';
import 'package:url_launcher/url_launcher_string.dart';

class AttachmentScreen extends StatelessWidget {
  final int experienceId;
  final int attachmentId;

  const AttachmentScreen(
      {super.key, required this.experienceId, required this.attachmentId});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AttachmentCubit, AttachmentState>(
      builder: (context, state) {
        if (state is AttachmentLoadedState) {
          return _buildAttachment(context, state.attachment);
        }

        return const UserLayout(
          renderNavigation: false,
          child: Loading(),
        );
      },
    );
  }

  Widget _buildAttachment(BuildContext context, Attachment attachment) {
    return UserLayout(
      appBar: AppBar(),
      floatingActionButton: (attachment.locked ?? false)
          ? null
          : FloatingActionButton.small(
              child: const Icon(Icons.edit),
              onPressed: () async {
                await EditAttachmentRoute(
                  experienceId: '$experienceId',
                  attachmentId: '$attachmentId',
                ).push(context);

                if (context.mounted) {
                  context.read<AttachmentCubit>().reload();
                }
              },
            ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: RefreshIndicator.adaptive(
          onRefresh: () => context.read<AttachmentCubit>().reload(),
          child: ListView(
            children: [
              Hero(
                tag: experienceHero,
                child: AspectRatio(
                  aspectRatio: 1.5,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: CachedNetworkImage(
                          imageUrl: attachment.preview!,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: IconButton(
                          onPressed: () => launchUrlString(
                            attachment.file!,
                            mode: LaunchMode.externalNonBrowserApplication,
                          ),
                          icon: const Icon(Icons.download),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24.0),
              Text(
                'Description',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              Text(
                attachment.description ?? '',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              for (final competence in attachment.competences!)
                _buildCompetence(context, competence),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCompetence(BuildContext context, Competence competence) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(competence.title!, softWrap: true),
        const Spacer(),
        IconButton(
          onPressed: () {
            if (competence.conceptUri != null) {
              launchUrlString(competence.conceptUri!);
            }
          },
          icon: const Icon(Icons.open_in_browser),
        ),
      ],
    );
  }
}
