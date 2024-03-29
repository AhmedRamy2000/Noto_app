import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/cubit/read_note_cubit.dart';
import 'package:notesapp/models/notes_model.dart';
import 'package:notesapp/widgets/NoteItem.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});
  final data = const [];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReadNoteCubit, ReadNoteState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<ReadNoteCubit>(context).notes ?? [];
        return Padding(
          padding: const EdgeInsets.only(top: 16),
          child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: notes.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: NoteItem(note: notes[index]),
                );
              }),
        );
      },
    );
  }
}
