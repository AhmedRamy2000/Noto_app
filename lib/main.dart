import 'package:flutter/material.dart';
import 'package:notesapp/views/notes_view.dart';

void main(){
  runApp(NotoApp());
}
class NotoApp extends StatelessWidget {
  const NotoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      home: NotesView(),
    );
  }
}