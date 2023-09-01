import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_search_icon.dart';

class EditCustomAppBar extends StatelessWidget {
  const EditCustomAppBar({super.key, required this.title, this.onPressed});
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
        CustomSearchIcon(icon: Icons.check, onPressed: onPressed),
      ],
    );
  }
}
