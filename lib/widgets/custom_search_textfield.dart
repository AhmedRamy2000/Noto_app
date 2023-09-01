import 'package:flutter/material.dart';
import 'package:notesapp/constants.dart';

class customSearchTextfield extends StatelessWidget {
  const customSearchTextfield({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.black26,
          prefixIcon: Icon(Icons.search, color: kForntColorDark, size: 28),
          border: InputBorder.none,
          hintText: 'Search...',
        ),
      ),
    );
  }
}
