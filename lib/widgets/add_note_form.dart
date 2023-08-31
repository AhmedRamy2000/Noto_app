import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notesapp/cubits/cubit/add_note_cubit_cubit.dart';
import 'package:notesapp/models/notes_model.dart';
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
            BlocBuilder<AddNoteCubitCubit, AddNoteCubitState>(
                builder: (context, state) {
              return CustomBottom(
                isLoading: state is AddNoteCubitLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();

                    var formattedCurrentDate =
                        DateFormat.yMd().format(DateTime.now());
                    NoteModel model = NoteModel(
                        title: title!,
                        subtitle: subtitle!,
                        date: formattedCurrentDate,
                        color: Colors.blue.value);
                    BlocProvider.of<AddNoteCubitCubit>(context).addNote(model);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            }),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
