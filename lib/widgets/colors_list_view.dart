import 'package:flutter/material.dart';

class colorItem extends StatelessWidget {
  const colorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 30,
      backgroundColor: Colors.blue,
    );
  }
}

class ColorsListView extends StatelessWidget {
  const ColorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:76,
      child: ListView.builder(
          itemBuilder: (context, index) {
            return const colorItem();
          },
          itemCount: 10,
          scrollDirection: Axis.horizontal),
    );
  }
}