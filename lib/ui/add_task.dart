import 'package:flutter/material.dart';

import 'package:block/ui/write_task_widget_add_task.dart';
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
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Stack(
        children: [Fondo(context), WriteTask(context)],
      ),
    );
  }
}
