import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_search_icon.dart';
import 'package:notesapp/widgets/custom_search_textfield.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar({super.key, required this.title, this.onPressed});
  final String title;

  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title,
            style: const TextStyle(
              fontSize: 28,
            )),
        const Spacer(),
        customSearchTextfield(),
      ],
    );
  }
}
