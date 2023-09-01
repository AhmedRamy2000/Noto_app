import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'search_note_state.dart';

class SearchNoteCubit extends Cubit<SearchNoteState> {
  SearchNoteCubit() : super(SearchNoteInitial());
  searchForNote(){
    
  }
}
