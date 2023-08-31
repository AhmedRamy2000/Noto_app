import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/cubit/read_note_cubit.dart';
import 'package:notesapp/models/notes_model.dart';
import 'package:notesapp/widgets/colors_list_view.dart';
import 'package:notesapp/widgets/custom_app_bar.dart';

import 'package:notesapp/widgets/custom_text_field.dart';
import 'package:notesapp/widgets/edit_note_colors_list.dart';

class EditViewBody extends StatefulWidget {
  const EditViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditViewBody> createState() => _EditViewBodyState();
}

class _EditViewBodyState extends State<EditViewBody> {
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(height: 50),
          CustomAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subtitle = subtitle ?? widget.note.subtitle;
              widget.note.save();
              BlocProvider.of<ReadNoteCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
            title: 'Edit note',
            icon: Icons.check,
          ),
          const SizedBox(height: 32),
          CustonTextField(
              hint: widget.note.title,
              onchange: (value) {
                title = value;
              }),
          const SizedBox(height: 16),
          CustonTextField(
              hint: widget.note.subtitle,
              maxLines: 5,
              onchange: (value) {
                subtitle = value;
              }),
          const SizedBox(height: 32),
          EditNoteColorsList(note: widget.note),
        ],
      ),
    );
  }
}
