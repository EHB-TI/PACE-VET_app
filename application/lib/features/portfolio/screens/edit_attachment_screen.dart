import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pace_vet/features/portfolio/cubit/attachment/attachment_cubit.dart';
import 'package:pace_vet/features/portfolio/widgets/file_picker_field.dart';
import 'package:pace_vet/shared/validation.dart';
import 'package:pace_vet/shared/widgets/user_layout.dart';

class EditAttachmentScreen extends StatefulWidget {
  const EditAttachmentScreen({super.key});

  @override
  State<EditAttachmentScreen> createState() => _EditAttachmentScreenState();
}

class _EditAttachmentScreenState extends State<EditAttachmentScreen> {
  XFile? _file;
  TextEditingController _description = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AttachmentCubit, AttachmentState>(
      listenWhen: (previous, current) => current is AttachmentLoadedState,
      listener: (context, state) {
        if (state is AttachmentLoadedState) {
          _description = TextEditingController(
            text: state.attachment.description ?? '',
          );
        }
      },
      builder: (context, state) {
        if (state is AttachmentLoadedState) {
          return UserLayout(
            appBar: AppBar(),
            floatingActionButton: FloatingActionButton.small(
              child: const Icon(Icons.save),
              onPressed: () => context.read<AttachmentCubit>().update(
                    _description.text,
                    _file,
                  ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: _buildAttachmentForm(context, state),
            ),
          );
        }

        return UserLayout.loading();
      },
    );
  }

  Widget _buildAttachmentForm(
      BuildContext context, AttachmentLoadedState state) {
    return Column(
      children: [
        FilePickerField(
          value: _file,
          onChange: (file) => setState(() => _file = file),
          errorText: state.validation['/upload'],
        ),
        const SizedBox(height: 12),
        TextFormField(
          controller: _description,
          validator: buildValidator([isRequired]),
          decoration: InputDecoration(
            hintText: 'Description',
            errorText: state.validation['/description'],
          ),
          maxLines: 3,
        ),
      ],
    );
  }
}
