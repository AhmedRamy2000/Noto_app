import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_botton.dart';
import 'package:notesapp/widgets/custom_text_field.dart';

class addNoteForm extends StatefulWidget {
  const addNoteForm({
    super.key,
  });

  @override
  State<addNoteForm> createState() => _addNoteFormState();
}

class _addNoteFormState extends State<addNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: formKey,
        autovalidateMode: autovalidateMode,
        child: Column(
          children: [
            const SizedBox(height: 32),
            CustonTextField(
              hint: 'Note Title',
              onSaved: (value) {
                title = value;
              },
            ),
            const SizedBox(height: 16),
            CustonTextField(
              hint: 'content',
              maxLines: 5,
              onSaved: (value) {
                subtitle = value;
              },
            ),
            const SizedBox(height: 32),
            CustomBottom(
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                } else {
                  autovalidateMode = AutovalidateMode.always;
                }
              },
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
