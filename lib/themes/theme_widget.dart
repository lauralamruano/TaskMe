import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import '../models/color_theme_model.dart';
import '../providers/color_provider.dart';

class ChangeColor extends StatefulWidget {
  const ChangeColor({Key? key}) : super(key: key);

  @override
  State<ChangeColor> createState() => _ChangeColorState();
}

class _ChangeColorState extends State<ChangeColor> {
  late ThemeData selectedTheme;

  @override
  void initState() {
    super.initState();
    selectedTheme = Provider.of<ColorProvider>(context, listen: false).selectedTheme;
  }

  @override
  Widget build(BuildContext context) {
    final colorProvider = Provider.of<ColorProvider>(context);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text('Selecciona un color:'),
            SizedBox(height: 40),
            IconButton(
              onPressed: () {
                setState(() {
                  colorProvider.setTheme(themes[1].theme);
                });
              },
              icon: Icon(Icons.color_lens, size: 80),
              color: Colors.blue,
            ),
            SizedBox(height: 40),
            IconButton(
              onPressed: () {
                setState(() {
                  colorProvider.setTheme(themes[2].theme);
                });
              },
              icon: Icon(Icons.color_lens, size: 80),
              color: Colors.orange,
            ),
            SizedBox(height: 40),
            IconButton(
              onPressed: () {
                setState(() {
                  colorProvider.setTheme(themes[3].theme);
                });
              },
              icon: Icon(Icons.color_lens, size: 80),
              color: Colors.red,
            ),
            SizedBox(height: 40),
            IconButton(
              onPressed: () {
                setState(() {
                  colorProvider.setTheme(themes[0].theme);
                });
              },
              icon: Icon(Icons.color_lens, size: 80,),
              color: Colors.pink,
            ),
          ],
        ),
      ),
    );
  }
}