import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notesapp/constants.dart';
import 'package:notesapp/models/notes_model.dart';

part 'add_note_cubit_state.dart';

class AddNoteCubitCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubitCubit() : super(AddNoteCubitInitial());
  addNote(NoteModel note)async{
    emit(AddNoteCubitLoading());
    try{
    var notesBox = Hive.box<NoteModel>(kNotesBox);
    emit(AddNoteCubitSuccess());
    await notesBox.add(note);
    }catch(ex){
      AddNoteCubitFailure(ex.toString());
    }
  }
}
