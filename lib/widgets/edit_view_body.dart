import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_app_bar.dart';

import 'package:notesapp/widgets/custom_text_field.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(
            title: 'Edit note',
            icon: Icons.check,
          ),
          SizedBox(height: 32),
          CustonTextField(hint: 'Note Title'),
          SizedBox(height: 16),
          CustonTextField(
            hint: 'content',
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
