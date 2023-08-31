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

class ColorsListView extends StatefulWidget {
  ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  List<Color> colors = [
    const Color(0xffff7f11),
    const Color(0xffff1b1c),
    const Color(0xffacbfa4),
    const Color(0xffd11aff),
    const Color(0xffff14c0),
    const Color(0xffffb8b8),
    const Color(0xffffb566),
    const Color(0xff4d0000),
  ];
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
                    setState(() {});
                  },
                  child: colorItem(
                    color: colors[index],
                    isActive: currentIndex == index,
                  )),
            );
          },
          itemCount: 8,
          scrollDirection: Axis.horizontal),
    );
  }
}
