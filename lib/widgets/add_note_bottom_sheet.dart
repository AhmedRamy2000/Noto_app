import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(children: [
        SizedBox(height: 32),
        CustonTextField(hint: 'Note Title'),
        SizedBox(height: 16),
        CustonTextField(hint: 'content',maxLines: 5,),
      ],),
    );
  }
}