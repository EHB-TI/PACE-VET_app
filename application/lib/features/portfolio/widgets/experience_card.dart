import 'package:flutter/material.dart';
import 'package:pace_vet/shared/widgets/cached_network_image.dart';
import 'package:pace_vet_api/pace_vet_api.dart';

class ExperienceCard extends StatelessWidget {
  final Experience experience;

  const ExperienceCard(this.experience, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.0),
        child: AspectRatio(
          aspectRatio: 1.5,
          child: Stack(
            children: [
              _buildPreview(experience),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      experience.title ?? '',
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            color: Colors.white,
                          ),
                    ),
                    Text(
                      experience.location ?? '',
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                            color: Colors.white,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPreview(Experience experience) {
    final preview = experience.attachments?.firstOrNull?.preview;

    if (preview != null) {
      return CachedNetworkImage(
        imageUrl: preview,
        fit: BoxFit.cover,
        width: double.infinity,
        height: double.infinity,
      );
    }

    return Image.asset(
      'images/no-image.jpg',
      fit: BoxFit.cover,
      width: double.infinity,
      height: double.infinity,
    );
  }
}
