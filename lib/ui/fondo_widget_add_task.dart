import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/color_provider.dart';

class Fondo extends StatelessWidget {
  const Fondo(BuildContext context, {super.key});

  @override
  Widget build(BuildContext context) {
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
}

