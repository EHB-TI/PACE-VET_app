import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pace_vet/features/portfolio/cubit/experience/experience_cubit.dart';
import 'package:pace_vet/features/portfolio/routes.dart';
import 'package:pace_vet/shared/validation.dart';
import 'package:pace_vet/shared/widgets/date_form_field.dart';
import 'package:pace_vet/shared/widgets/loading.dart';
import 'package:pace_vet/shared/widgets/user_layout.dart';
import 'package:pace_vet_api/pace_vet_api.dart';

class CreateExperienceScreen extends StatefulWidget {
  const CreateExperienceScreen({super.key});

  @override
  State<CreateExperienceScreen> createState() => _CreateExperienceScreenState();
}

class _CreateExperienceScreenState extends State<CreateExperienceScreen> {
  final GlobalKey<FormState> _form = GlobalKey();
  final TextEditingController _title = TextEditingController();
  CreateExperienceRequestTypeEnum _type = CreateExperienceRequestTypeEnum.event;
  final TextEditingController _location = TextEditingController();
  final TextEditingController _description = TextEditingController();
  DateTime _start = DateTime.now();
  DateTime _end = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ExperienceCubit, ExperienceState>(
      listenWhen: (previous, current) => current is ExperienceCreatedState,
      listener: (context, state) {
        if (state is ExperienceCreatedState) {
          context.pop(true);
          ExperienceRoute(id: state.experience.id!).push(context);
        }
      },
      builder: (context, state) {
        if (state is NoExperienceState) {
          return UserLayout(
            appBar: AppBar(),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: _buildExperienceForm(context, state),
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

  Widget _buildExperienceForm(BuildContext context, ExperienceState state) {
    return Form(
      key: _form,
      child: ListView(
        children: [
          const SizedBox(height: 6.0),
          TextFormField(
            controller: _title,
            validator: buildValidator([isRequired]),
            decoration: InputDecoration(
              labelText: 'Title',
              errorText: state.validation['/title'],
            ),
          ),
          const SizedBox(height: 12.0),
          DropdownButtonFormField(
            value: _type,
            items: CreateExperienceRequestTypeEnum.values
                .map(
                  (type) => DropdownMenuItem(
                    value: type,
                    child: Text(type.name),
                  ),
                )
                .toList(),
            validator: buildValidator([isRequired]),
            decoration: InputDecoration(
              labelText: 'Type',
              errorText: state.validation['/type'],
            ),
            onChanged: (value) => setState(() => _type = value ?? _type),
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
          DateFormField(
            validator: buildValidator([isRequired]),
            value: _start,
            onChange: (value) => setState(() => _start = value ?? _start),
            decoration: InputDecoration(
              labelText: 'Start date',
              errorText: state.validation['/start'],
            ),
          ),
          const SizedBox(height: 12.0),
          DateFormField(
            validator: buildValidator([isRequired]),
            value: _end,
            onChange: (value) => setState(() => _end = value ?? _end),
            decoration: InputDecoration(
              labelText: 'End date',
              errorText: state.validation['/end'],
            ),
          ),
          const SizedBox(height: 12.0),
          TextFormField(
            controller: _description,
            maxLength: 255,
            validator: buildValidator([isRequired]),
            decoration: InputDecoration(
              labelText: 'Description',
              errorText: state.validation['/description'],
            ),
            maxLines: 4,
          ),
          const SizedBox(height: 12.0),
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
          SizedBox(
            width: double.infinity,
            child: FilledButton.icon(
              icon: const Icon(Icons.save),
              onPressed: () {
                if (_form.currentState?.validate() ?? false) {
                  context.read<ExperienceCubit>().create(
                        title: _title.text,
                        description: _description.text,
                        location: _location.text,
                        start: _start,
                        end: _end,
                      );
                }
              },
              label: const Text('Create'),
            ),
          ),
        ],
      ),
    );
  }
}
