import 'package:flutter/material.dart';
import 'package:notesapp/constants.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      decoration: BoxDecoration(
          color: kPrimaryColor, borderRadius: BorderRadius.circular(16)),
      child: Center(
          child: Text(
        'Add',
        style: TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
      )),
    );
  }
}
