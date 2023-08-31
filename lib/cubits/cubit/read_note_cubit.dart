import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notesapp/constants.dart';

import 'package:notesapp/models/notes_model.dart';

part 'read_note_state.dart';

class ReadNoteCubit extends Cubit<ReadNoteState> {
  ReadNoteCubit() : super(ReadNoteInitial());
  fetchAllNotes() async {
    emit(ReadNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      emit(ReadNoteSuccess(notesBox.values.toList()));
    } catch (ex) {
      emit(ReadNoteFailure(ex.toString()));
    }
  }
}
