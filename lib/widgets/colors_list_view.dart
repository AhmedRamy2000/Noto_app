import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/constants.dart';
import 'package:notesapp/cubits/cubit/add_note_cubit_cubit.dart';
import 'package:notesapp/widgets/colorItem.dart';

class ColorsListView extends StatefulWidget {
  ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;

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
                    BlocProvider.of<AddNoteCubitCubit>(context).color =
                        kColors[index];
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
