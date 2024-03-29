import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notesapp/cubits/cubit/add_note_cubit_cubit.dart';
import 'package:notesapp/cubits/cubit/read_note_cubit.dart';
import 'package:notesapp/widgets/add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubitCubit(),
      child: BlocConsumer<AddNoteCubitCubit, AddNoteCubitState>(
        listener: (context, state) {
          if (state is AddNoteCubitSuccess) {
            BlocProvider.of<ReadNoteCubit>(context).fetchAllNotes();
            Navigator.pop(context);
          } else if (state is AddNoteCubitFailure) {}
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteCubitLoading
                ? true
                : false, //stop control in screen while loading data
            child: ModalProgressHUD(
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 16,
                      right: 16,
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: addNoteForm(),
                ),
                inAsyncCall: state is AddNoteCubitLoading ? true : false),
          );
        },
      ),
    );
  }
}
