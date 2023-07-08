import 'package:flutter/material.dart';


class WriteTask extends StatefulWidget {
  const WriteTask(BuildContext context, {super.key});

  @override
  State<WriteTask> createState() => _WriteTaskState();
}

class _WriteTaskState extends State<WriteTask> {
  @override
  Widget build(BuildContext context) {
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
            padding: const EdgeInsets.symmetric(vertical: 50),
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
            child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(labelText: 'Escriba su nueva tarea:'),
                )),
          ),
        ],
      ),
    );
  }
}

