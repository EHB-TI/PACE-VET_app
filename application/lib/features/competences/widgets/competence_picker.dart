import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pace_vet/features/competences/cubit/competences_cubit.dart';
import 'package:pace_vet/features/competences/widgets/competence_picker_dialog.dart';
import 'package:pace_vet/shared/widgets/loading.dart';
import 'package:pace_vet_api/pace_vet_api.dart';

class CompetencePicker extends StatefulWidget {
  final String? errorText;
  final List<Competence> selected;
  final void Function(List<Competence>)? onChange;

  const CompetencePicker({
    super.key,
    this.errorText,
    required this.selected,
    this.onChange,
  });

  @override
  State<CompetencePicker> createState() => _CompetencePickerState();
}

class _CompetencePickerState extends State<CompetencePicker> {
  final TextEditingController _label = TextEditingController();

  @override
  void initState() {
    super.initState();

    _updateLabel(widget.selected);
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
    return TextFormField(
      readOnly: true,
      controller: _label,
      decoration: InputDecoration(
        labelText: 'Select competences',
        hintText: 'no competences selected',
        errorText: widget.errorText,
        suffixIcon: GestureDetector(
          onTap: () async {
            final list = await showAdaptiveDialog<List<Competence>>(
              context: context,
              builder: (context) => CompetencePickerDialog(
                selected: widget.selected,
              ),
            );

            _updateLabel(list!);
            widget.onChange?.call(list);
          },
          child: const Icon(Icons.open_in_new),
        ),
      ),
    );
  }

  void _updateLabel(List<Competence> competences) {
    final text = competences.map((competence) => competence.title).join(', ');

    _label.text = text;
  }
}
