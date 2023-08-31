import 'package:flutter/material.dart';
import 'package:notesapp/constants.dart';
import 'package:notesapp/models/notes_model.dart';
import 'package:notesapp/widgets/colorItem.dart';

class EditNoteColorsList extends StatefulWidget {
  EditNoteColorsList({super.key, required this.note});
  NoteModel note;
  @override
  State<EditNoteColorsList> createState() => _EditNoteColorsListState();
}

class _EditNoteColorsListState extends State<EditNoteColorsList> {
  late int currentIndex;
  @override
  void initState(){
    currentIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 76,
      child: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: GestureDetector(
                  onTap: () {
                    currentIndex = index;
                    widget.note.color = kColors[index].value;
                    setState(() {});
                  },
                  child: colorItem(
                    color: kColors[index],
                    isActive: currentIndex == index,
                  )),
            );
          },
          itemCount: 8,
          scrollDirection: Axis.horizontal),
    );
  }
}
