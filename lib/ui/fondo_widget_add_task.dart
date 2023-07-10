import 'package:flutter/material.dart';


class Fondo extends StatelessWidget {
  const Fondo(BuildContext context, {super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final fondoColor = Container(
      width: double.infinity,
      color: Theme.of(context).colorScheme.primary,
    );
    return Stack(
      children: [
        fondoColor,
        Container(
          padding: EdgeInsets.only(top: 80),
          child: const Column(
            children: [
              SizedBox(
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
}

