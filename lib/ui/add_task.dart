import 'package:flutter/material.dart';

import 'package:block/providers/color_provider.dart';
import 'package:block/ui/write_task_widget_add_task.dart';
import 'package:provider/provider.dart';
import '../models/note_model.dart';
import 'fondo_widget_add_task.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  List <Note> notes = [];
  List <Note> deletedNotes = [];

  void addNewNote(){
    setState(() {
      notes.add(Note(content: '', isDelete: true, title: ''));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.select<ColorProvider, Color?>((colorProvider) => colorProvider.selectedTheme.colorScheme.primary),
      ),
      body: Stack(
        children: [Fondo(context), WriteTask(context)],
      ),
    );
  }
}
