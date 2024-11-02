import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

class FilePickerField extends StatefulWidget {
  final XFile? value;
  final void Function(XFile? file)? onChange;
  final String? Function(String?)? validator;
  final String? errorText;

  const FilePickerField({
    super.key,
    this.value,
    this.onChange,
    this.validator,
    this.errorText,
  });

  @override
  State<FilePickerField> createState() => _FilePickerFieldState();
}

class _FilePickerFieldState extends State<FilePickerField> {
  String? errorText;

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController(text: widget.value?.name);

    return TextFormField(
      readOnly: true,
      controller: controller,
      validator: widget.validator,
      decoration: InputDecoration(
        hintText: 'no file selected',
        errorText: widget.errorText ?? errorText,
        suffixIcon: GestureDetector(
          onTap: () async {
            try {
              final file = await showPickerDialog(context);
              // final file = setState(() => errorText = null);
              widget.onChange?.call(file);
            } on PlatformException catch (error) {
              setState(
                () => errorText = error.message ??
                    'You must grant permission to access media library',
              );
            }
          },
          child: const Icon(Icons.note_add),
        ),
      ),
    );
  }

  Future<XFile?> showPickerDialog(BuildContext context) async {
    return await showAdaptiveDialog<XFile>(
      context: context,
      builder: (context) => AlertDialog.adaptive(
        content: Text('Select where to pick an attachment'),
        actions: [
          TextButton.icon(
            onPressed: () async {
              context.pop(await _pickImage(context));
            },
            label: const Text('Select image'),
            icon: const Icon(Icons.image_search_outlined),
          ),
          TextButton.icon(
            onPressed: () async {
              context.pop(await _takeImage(context));
            },
            label: const Text('Take picture'),
            icon: const Icon(Icons.add_a_photo_outlined),
          ),
          TextButton.icon(
            onPressed: () async {
              context.pop(await _selectDocument(context));
            },
            label: const Text('Select document'),
            icon: const Icon(Icons.add_to_drive_sharp),
          ),
        ],
      ),
    );
  }

  Future<XFile?> _pickImage(BuildContext context) async {
    return await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
  }

  Future<XFile?> _takeImage(BuildContext context) async {
    return await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
  }

  Future<XFile?> _selectDocument(BuildContext context) async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf', 'mp4', 'mov'],
    );

    return result?.xFiles.firstOrNull;
  }
}
