import 'package:flutter/material.dart';

class Procesing extends StatelessWidget {
  const Procesing({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: buttons,
    );
  }
}

List<ElevatedButton> buttons = [
  ElevatedButton(
    onPressed: () {},
    child: Text('Pendientes'),
  ),
  ElevatedButton(
    onPressed: () {},
    child: Text('Procesando'),
  ),
  ElevatedButton(
    onPressed: () {},
    child: Text('Finalizadas'),
  ),
];