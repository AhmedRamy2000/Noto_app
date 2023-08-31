import 'package:flutter/material.dart';

class colorItem extends StatelessWidget {
  colorItem({super.key, this.isActive = false, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 36,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 33,
              backgroundColor: color,
            ))
        : CircleAvatar(
            radius: 36,
            backgroundColor: color,
          );
  }
}