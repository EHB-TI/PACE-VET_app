import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pace_vet/features/competences/widgets/competence_picker.dart';
import 'package:pace_vet/features/portfolio/cubit/attachment/attachment_cubit.dart';
import 'package:pace_vet/features/portfolio/widgets/file_picker_field.dart';
import 'package:pace_vet/shared/validation.dart';
import 'package:pace_vet/shared/widgets/loading.dart';
import 'package:pace_vet/shared/widgets/user_layout.dart';
import 'package:pace_vet_api/pace_vet_api.dart';

class CreateAttachmentScreen extends StatefulWidget {
  const CreateAttachmentScreen({super.key});

  @override
  State<CreateAttachmentScreen> createState() => _CreateAttachmentScreenState();
}

class _CreateAttachmentScreenState extends State<CreateAttachmentScreen> {
  final GlobalKey<FormState> _form = GlobalKey();
  final TextEditingController _description = TextEditingController();

  XFile? _file;
  List<Competence> _competences = [];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AttachmentCubit, AttachmentState>(
      listenWhen: (previous, current) => current is AttachmentCreatedState,
      listener: (context, state) {
        if (state is AttachmentCreatedState) {
          context.pop();
        }
      },
      builder: (context, state) {
        if (state is NoAttachmentState) {
          return UserLayout(
            appBar: AppBar(
              title: Text(state.experience.title ?? ''),
            ),
            child: _buildAttachmentForm(context, state),
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

  Widget _buildAttachmentForm(BuildContext context, NoAttachmentState state) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Form(
        key: _form,
        child: ListView(
          children: [
            CompetencePicker(
              errorText: state.validation['/competences'],
              selected: _competences,
              onChange: (competences) => setState(
                () => _competences = competences,
              ),
            ),
            const SizedBox(height: 12.0),
            TextFormField(
              validator: buildValidator([isRequired]),
              controller: _description,
              decoration: InputDecoration(
                labelText: 'Description',
                errorText: state.validation['/description'],
              ),
            ),
            const SizedBox(height: 12.0),
            FilePickerField(
              value: _file,
              validator: buildValidator([isRequired]),
              onChange: (file) => setState(() => _file = file),
            ),
            const SizedBox(height: 12.0),
            if (state.error.exception != null)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Text(
                  state.error.message ?? '',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: Theme.of(context).colorScheme.error,
                      ),
                ),
              ),
            SizedBox(
              width: double.infinity,
              child: FilledButton.icon(
                icon: const Icon(Icons.save),
                onPressed: () {
                  if (_form.currentState?.validate() ?? false) {
                    context.read<AttachmentCubit>().create(
                          experience: state.experience,
                          description: _description.text,
                          competences: _competences,
                          file: _file!,
                        );
                  }
                },
                label: const Text('Create'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
