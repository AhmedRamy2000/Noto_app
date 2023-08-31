import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import 'package:notesapp/constants.dart';
import 'package:notesapp/models/notes_model.dart';

part 'add_note_cubit_state.dart';

class AddNoteCubitCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubitCubit() : super(AddNoteCubitInitial());
  addNote(NoteModel note) async {
    emit(AddNoteCubitLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(note);
      emit(AddNoteCubitSuccess());
    } catch (ex) {
      emit(AddNoteCubitFailure(ex.toString()));
    }
  }
}
