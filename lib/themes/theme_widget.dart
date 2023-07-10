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
  late ColorTheme selectedTheme;

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
            Text('Selecciona un color:', style: TextStyle(fontSize: 24, color: Theme.of(context).colorScheme.primary,),),
            SizedBox(height: 40),
            IconButton(
              onPressed: () {
                setState(() {
                  colorProvider.setTheme(themes[1]);
                });
                Navigator.pop(context);
              },
              icon: Icon(Icons.color_lens, size: 80),
              color: Colors.blue,
            ),
            SizedBox(height: 40),
            IconButton(
              onPressed: () {
                setState(() {
                  colorProvider.setTheme(themes[2]);
                });
                Navigator.pop(context);
              },
              icon: Icon(Icons.color_lens, size: 80),
              color: Colors.orange,
            ),
            SizedBox(height: 40),
            IconButton(
              onPressed: () {
                setState(() {
                  colorProvider.setTheme(themes[3]);
                });
                Navigator.pop(context);
              },
              icon: Icon(Icons.color_lens, size: 80),
              color: Colors.red,
            ),
            SizedBox(height: 40),
            IconButton(
              onPressed: () {
                setState(() {
                  colorProvider.setTheme(themes[0]);
                });
                Navigator.pop(context);
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