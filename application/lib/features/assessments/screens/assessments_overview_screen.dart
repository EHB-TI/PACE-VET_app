import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pace_vet/features/assessments/cubit/assessments/assessments_cubit.dart';
import 'package:pace_vet/features/assessments/routes.dart';
import 'package:pace_vet/features/auth/extensions/build_context_extensions.dart';
import 'package:pace_vet/shared/widgets/loading.dart';
import 'package:pace_vet/shared/widgets/user_layout.dart';
import 'package:pace_vet_api/pace_vet_api.dart';

class AssessmentsOverviewScreen extends StatelessWidget {
  const AssessmentsOverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AssessmentsCubit, AssessmentsState>(
      builder: (context, state) {
        if (state is AssessmentsLoadedState) {
          return UserLayout(
            floatingActionButton: context.userHasType(UserType.candidate)
                ? FloatingActionButton(
                    onPressed: () => CreateAssessmentRoute().push(context),
                    child: const Icon(Icons.add),
                  )
                : null,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: _buildOverview(context, state.assessments),
            ),
          );
        }

        return const UserLayout(
          renderNavigation: true,
          child: Loading(),
        );
      },
    );
  }

  Widget _buildOverview(BuildContext context, List<Assessment> assessments) {
    if (assessments.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('There are currently no assessments'),
            IconButton(
              onPressed: () => context.read<AssessmentsCubit>().reload(),
              icon: const Icon(Icons.refresh),
            ),
          ],
        ),
      );
    }

    return RefreshIndicator.adaptive(
      onRefresh: () async => context.read<AssessmentsCubit>().reload(),
      child: ListView.builder(
        itemCount: assessments.length,
        itemBuilder: (context, index) {
          final assessment = assessments.elementAt(index);

          return _buildAssessment(context, assessment);
        },
      ),
    );
  }

  Widget _buildAssessment(BuildContext context, Assessment assessment) {
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
                  '${assessment.assessor!.name} is assessing ${assessment.candidate!.name}',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Text(
                  'assessing ${assessment.reviews!.length} items',
                  style: Theme.of(context).textTheme.labelSmall,
                )
              ],
            ),
            IconButton.filled(
              onPressed: () => AssessmentRoute(assessment.id!).push(context),
              icon: const Icon(Icons.navigate_next),
            )
          ],
        ),
      ),
    );
  }
}
