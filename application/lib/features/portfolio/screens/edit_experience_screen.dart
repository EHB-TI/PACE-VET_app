import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pace_vet/features/portfolio/cubit/experience/experience_cubit.dart';
import 'package:pace_vet/shared/validation.dart';
import 'package:pace_vet/shared/widgets/confirmation_dialog.dart';
import 'package:pace_vet/shared/widgets/loading.dart';
import 'package:pace_vet/shared/widgets/user_layout.dart';
import 'package:pace_vet_api/pace_vet_api.dart';

class EditExperienceScreen extends StatefulWidget {
  const EditExperienceScreen({super.key});

  @override
  State<EditExperienceScreen> createState() => _EditExperienceScreenState();
}

class _EditExperienceScreenState extends State<EditExperienceScreen> {
  final GlobalKey<FormState> _form = GlobalKey();
  final TextEditingController _title = TextEditingController();
  final TextEditingController _location = TextEditingController();
  final TextEditingController _description = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ExperienceCubit, ExperienceState>(
      listenWhen: (previous, current) => current is ExperienceLoadedState,
      listener: (context, state) {
        if (state is ExperienceLoadedState) {
          _title.text = state.experience.title ?? '';
          _location.text = state.experience.location ?? '';
          _description.text = state.experience.description ?? '';
        }
      },
      builder: (context, state) {
        if (state is ExperienceLoadedState) {
          return UserLayout(
            appBar: AppBar(),
            renderNavigation: false,
            floatingActionButton: FloatingActionButton(
              child: const Icon(Icons.save),
              onPressed: () {
                if (_form.currentState?.validate() ?? false) {
                  context.read<ExperienceCubit>().update(
                        _title.text,
                        _location.text,
                        _description.text,
                      );
                }
              },
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: RefreshIndicator.adaptive(
                onRefresh: () async {
                  final confirmed = await showConfirmationDialog(
                        context,
                        const Text(
                          'This will reset all unsaved changes you made, are you sure you want to reload?',
                        ),
                      ) ??
                      false;

                  if (context.mounted && confirmed) {
                    await context.read<ExperienceCubit>().reload();
                  }
                },
                child: _buildExperienceForm(
                  context,
                  state.experience,
                  state,
                ),
              ),
            ),
          );
        }

        return const UserLayout(
          renderNavigation: false,
          child: Loading(),
        );
      },
    );
  }

  Widget _buildExperienceForm(
      BuildContext context, Experience experience, ExperienceState state) {
    return Form(
      key: _form,
      child: ListView(
        children: [
          TextFormField(
            controller: _title,
            validator: buildValidator([isRequired]),
            decoration: InputDecoration(
              labelText: 'Title',
              errorText: state.validation['/title'],
            ),
          ),
          const SizedBox(height: 12.0),
          TextFormField(
            controller: _location,
            validator: buildValidator([isRequired]),
            decoration: InputDecoration(
              labelText: 'Location',
              errorText: state.validation['/location'],
            ),
          ),
          const SizedBox(height: 12.0),
          TextFormField(
            controller: _description,
            maxLines: 3,
            validator: buildValidator([isRequired]),
            decoration: InputDecoration(
              labelText: 'Description',
              errorText: state.validation['/description'],
            ),
          ),
          if (state.error.exception != null)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Text(
                state.error.message ?? '',
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium
                    ?.copyWith(color: Theme.of(context).colorScheme.error),
              ),
            ),
        ],
      ),
    );
  }
}
