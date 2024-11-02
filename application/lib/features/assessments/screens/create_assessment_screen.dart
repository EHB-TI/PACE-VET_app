import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pace_vet/features/assessments/cubit/assessment/assessment_cubit.dart';
import 'package:pace_vet/features/assessments/routes.dart';
import 'package:pace_vet/features/auth/extensions/user_extensions.dart';
import 'package:pace_vet/shared/validation.dart';
import 'package:pace_vet/shared/widgets/confirmation_dialog.dart';
import 'package:pace_vet/shared/widgets/loading.dart';
import 'package:pace_vet/shared/widgets/user_layout.dart';
import 'package:pace_vet_api/pace_vet_api.dart';

class CreateAssessmentScreen extends StatefulWidget {
  const CreateAssessmentScreen({super.key});

  @override
  State<CreateAssessmentScreen> createState() => _CreateAssessmentScreenState();
}

class _CreateAssessmentScreenState extends State<CreateAssessmentScreen> {
  final GlobalKey<FormState> _form = GlobalKey();
  final Map<Competence, bool> _selectedCompetences = {};
  User? _assessor;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AssessmentCubit, AssessmentState>(
      listenWhen: (previous, current) => current is AssessmentCreatedState,
      listener: (context, state) => context.pop(),
      builder: (context, state) {
        if (state is NoAssessmentState) {
          return UserLayout(
            appBar: AppBar(),
            floatingActionButton: FloatingActionButton(
              child: const Icon(Icons.save),
              onPressed: () async {
                if (_form.currentState?.validate() ?? false) {
                  final selected = _selectedCompetences.entries
                      .where((entry) => entry.value)
                      .map((entry) => entry.key)
                      .toList();

                  if (selected.isEmpty) {
                    return;
                  }

                  if (await confirmAssessment(context, selected) &&
                      context.mounted) {
                    context
                        .read<AssessmentCubit>()
                        .create(_assessor!, selected);
                  }
                }
              },
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: _buildCreateForm(context, state),
            ),
          );
        }

        return UserLayout(
          appBar: AppBar(),
          renderNavigation: false,
          child: const Loading(),
        );
      },
    );
  }

  Widget _buildCreateForm(BuildContext context, NoAssessmentState state) {
    return Form(
      key: _form,
      child: RefreshIndicator.adaptive(
        onRefresh: () => context.read<AssessmentCubit>().reload(),
        child: ListView(
          children: [
            Text(
              'Select an experience to request an assessment for',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 12.0),
            DropdownButtonFormField(
              validator: buildValidator([isRequired]),
              decoration: InputDecoration(
                hintText: 'Select an assessor',
                errorText: state.validation['/assessor'],
              ),
              items: state.users
                  .map(
                    (user) => DropdownMenuItem(
                      value: user,
                      child: Text(user.fullName),
                    ),
                  )
                  .toList(),
              onChanged: (value) => _assessor = value,
            ),
            const SizedBox(height: 12.0),
            for (final competence in state.competences)
              _buildCompetenceCard(context, competence),
          ],
        ),
      ),
    );
  }

  Widget _buildCompetenceCard(BuildContext context, Competence competence) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Checkbox.adaptive(
              value: _selectedCompetences.containsKey(competence)
                  ? _selectedCompetences[competence]
                  : false,
              onChanged: (value) {
                setState(() {
                  _selectedCompetences[competence] = value ?? false;
                });
              },
            ),
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
            const Spacer(),
            IconButton.filled(
              onPressed: () async {
                PreviewCompetenceRoute(competence: competence.key!)
                    .push(context);
              },
              icon: const Icon(Icons.open_in_new),
            ),
          ],
        ),
      ),
    );
  }

  Future<bool> confirmAssessment(
      BuildContext context, List<Competence> competences) async {
    final selected = competences
        .map((competence) => '${competence.key} ("${competence.title}")')
        .join(', ');
    return await showConfirmationDialog(
          context,
          Text(
            'Do you want to request an assessment for $selected from ${_assessor?.fullName}',
          ),
        ) ??
        false;
  }
}
