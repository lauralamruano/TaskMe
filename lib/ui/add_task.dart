import 'package:block/providers/color_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/note_model.dart';
import '../themes/theme.dart';

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
        children: [fondo(context), writeTask(context)],
      ),
    );
  }
}

Widget fondo(BuildContext context) {
  final size = MediaQuery.of(context).size;

  final fondoColor = Container(
    width: double.infinity,
    color: context.select<ColorProvider, Color?>((colorProvider) => colorProvider.selectedTheme.colorScheme.primary),
  );

  return Stack(
    children: [
      fondoColor,
      Container(
        padding: EdgeInsets.only(top: 80),
        child: const Column(
          children: [
            SizedBox(
              height: 50.0,
              width: double.infinity,
            ),
            Text(
              'Nueva Tarea',
              style: TextStyle(fontSize: 25),
            )
          ],
        ),
      )
    ],
  );
}

Widget writeTask(BuildContext context) {
  final size = MediaQuery.of(context).size;
  return SingleChildScrollView(
    child: Column(
      children: [
        SafeArea(
          child: Container(
            height: 200,
          ),
        ),
        Container(
          width: size.width * 0.85,
          padding: const EdgeInsets.symmetric(vertical: 150),
          margin: const EdgeInsets.symmetric(vertical: 30),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5.0),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 3.0,
                offset: Offset(0.0, 5.0),
                spreadRadius: 3.0,
              ),
            ],
          ),
          child: Column(
            children:
            [
              Text(
                'Crear cuenta',
                style: TextStyle(
                    fontSize: 20, color: context.select<ColorProvider, Color?>((colorProvider) => colorProvider.selectedTheme.colorScheme.inversePrimary),),
              ),
              task()
            ],
          ),
        ),
      ],
    ),
  );
}

Widget task() {
  return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(labelText: 'Escriba su nueva tarea:'),
      ));
}
