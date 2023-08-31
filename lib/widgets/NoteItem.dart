import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notesapp/models/notes_model.dart';
import 'package:notesapp/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key,required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const EditNoteView();
        }));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
        decoration: BoxDecoration(
            color: Color(note.color),
            borderRadius: BorderRadius.circular(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                note.title,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                    fontWeight: FontWeight.w500),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Text(note.subtitle,
                    style: TextStyle(color: Colors.black54, fontSize: 18)),
              ),
              trailing: IconButton(
                  onPressed: () {
                    note.delete();
                  },
                  icon: const Icon(
                    FontAwesomeIcons.trash,
                    color: Colors.black,
                    size: 25,
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(right: 16),
              child: Text(
                note.date,
                style: TextStyle(color: Colors.black45, fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}
