import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pace_vet/features/competences/cubit/competences_cubit.dart';
import 'package:pace_vet/shared/widgets/loading.dart';
import 'package:pace_vet_api/pace_vet_api.dart';
import 'package:url_launcher/url_launcher_string.dart';

class CompetencePickerDialog extends StatefulWidget {
  final List<Competence> selected;

  const CompetencePickerDialog({super.key, required this.selected});

  @override
  State<CompetencePickerDialog> createState() => _CompetencePickerDialogState();
}

class _CompetencePickerDialogState extends State<CompetencePickerDialog> {
  final Map<Competence, bool> _competences = {};

  @override
  void initState() {
    super.initState();

    for (var competence in widget.selected) {
      _competences[competence] = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CompetencesCubit, CompetencesState>(
      builder: (context, state) {
        if (state is CompetencesLoadedState) {
          return _buildCompetences(context, state.categories);
        }

        return const Loading();
      },
    );
  }

  Widget _buildCompetences(BuildContext context, List<Category> categories) {
    return Center(
      child: Card(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 450),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ConstrainedBox(
                  constraints: const BoxConstraints(maxHeight: 450.0),
                  child: ListView(
                    children: [
                      for (var category in categories)
                        _buildCompetenceCategory(category),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () => context.pop(),
                      child: const Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () {
                        final competences = _competences.entries
                            .where((entry) => entry.value)
                            .map((entry) => entry.key)
                            .toList();

                        context.pop(competences);
                      },
                      child: const Text('Apply selection'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCompetenceCategory(Category category) {
    return ExpansionTile(
      title: Text(category.title!),
      children: [
        for (var competence in category.competences!)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Checkbox(
                value: _competences.containsKey(competence) &&
                    (_competences[competence] ?? false),
                onChanged: (value) {
                  setState(() => _competences[competence] = value ?? false);
                },
              ),
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
          ),
      ],
    );
  }
}
