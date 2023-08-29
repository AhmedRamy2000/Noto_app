import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notesapp/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

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
            color: const Color(0xffFFCC80),
            borderRadius: BorderRadius.circular(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                'First Tip',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                    fontWeight: FontWeight.w500),
              ),
              subtitle: const Padding(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: Text('Be happy with who you are',
                    style: TextStyle(color: Colors.black54, fontSize: 18)),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.trash,
                    color: Colors.black,
                    size: 25,
                  )),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 16),
              child: Text(
                'Aug 1, 2023',
                style: TextStyle(color: Colors.black45, fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}
