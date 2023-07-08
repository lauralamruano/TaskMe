import 'package:block/providers/color_provider.dart';
import 'package:block/themes/theme_widget.dart';
import 'package:flutter/material.dart';

import 'package:block/ui/home_page.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(
    ChangeNotifierProvider<ColorProvider>(
      create: (context) => ColorProvider(),
      child: App(),
    ),
  );
}


class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ColorProvider>(context).selectedTheme,
      darkTheme: Provider.of<ColorProvider>(context).selectedTheme,
      home: HomePage(),
    );
  }
}
