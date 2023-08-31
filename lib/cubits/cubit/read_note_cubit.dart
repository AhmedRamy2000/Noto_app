import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';
import 'package:notesapp/constants.dart';

import 'package:notesapp/models/notes_model.dart';

part 'read_note_state.dart';

class ReadNoteCubit extends Cubit<ReadNoteState> {
  ReadNoteCubit() : super(ReadNoteInitial());
  List<NoteModel>? notes;
  fetchAllNotes(){
    var notesBox = Hive.box<NoteModel>(kNotesBox);
    notes = notesBox.values.toList();
    emit(ReadNoteSuccess());
    
  }
}
