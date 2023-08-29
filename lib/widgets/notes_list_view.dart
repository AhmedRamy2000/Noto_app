import 'package:flutter/material.dart';
import 'package:notesapp/widgets/NoteItem.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});
  final data = const [];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: ListView.builder(padding: EdgeInsets.zero,itemBuilder: (context, index){
        return const Padding(
          padding: EdgeInsets.symmetric(vertical:4),
          child: NoteItem(),
        );
      }),
    );
  }
}