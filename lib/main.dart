import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notesapp/constants.dart';
import 'package:notesapp/cubits/cubit/add_note_cubit_cubit.dart';
import 'package:notesapp/helper/simple_bloc_observer.dart';
import 'package:notesapp/models/notes_model.dart';
import 'package:notesapp/views/notes_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);
  
  runApp(const NotoApp());
}

class NotoApp extends StatelessWidget {
  const NotoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      home: const NotesView(),
    );
  }
}
