import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pace_vet/features/assessments/cubit/assessment/assessment_cubit.dart';
import 'package:pace_vet/features/assessments/routes.dart';
import 'package:pace_vet/shared/widgets/loading.dart';
import 'package:pace_vet/shared/widgets/user_layout.dart';
import 'package:pace_vet_api/pace_vet_api.dart';

class AssessmentScreen extends StatelessWidget {
  const AssessmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AssessmentCubit, AssessmentState>(
      builder: (context, state) {
        if (state is AssessmentLoadedState) {
          return UserLayout(
            appBar: AppBar(),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: _buildAssessment(context, state.assessment),
            ),
          );
        }

        return UserLayout(
          renderNavigation: false,
          appBar: AppBar(),
          child: const Loading(),
        );
      },
    );
  }

  Widget _buildAssessment(BuildContext context, Assessment assessment) {
    return RefreshIndicator.adaptive(
      onRefresh: () => context.read<AssessmentCubit>().reload(),
      child: ListView(
        children: [
          Text(
            'Assessment by ${assessment.assessor!.name}',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Text(
            'Assessing ${assessment.candidate!.name}',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Text(
            'assessment is currently ${assessment.state}',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const SizedBox(height: 24.0),
          for (final review in assessment.reviews!)
            _buildReviewPreview(context, assessment, review),
        ],
      ),
    );
  }

  Widget _buildReviewPreview(
      BuildContext context, Assessment assessment, Review review) {
    final competence = review.competence!;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  competence.key!,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                Text(
                  competence.title!,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
            TextButton.icon(
              onPressed: () async {
                await ReviewRoute(
                  assessment: assessment.id!,
                  review: review.id!,
                ).push(context);
                if (context.mounted) {
                  context.read<AssessmentCubit>().reload();
                }
              },
              icon: const Icon(Icons.open_in_new),
              label: Text(review.state!.name),
            ),
          ],
        ),
      ),
    );
  }
}
