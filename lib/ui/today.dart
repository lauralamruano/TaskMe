import 'package:block/ui/today_widget.dart';
import 'package:flutter/material.dart';

import 'package:block/providers/color_provider.dart';
import 'package:block/themes/theme_widget.dart';
import 'package:block/ui/add_task.dart';
import 'package:block/ui/info.dart';
import 'package:block/ui/procesing_work_widget.dart';
import 'package:provider/provider.dart';

class Today extends StatefulWidget {
  const Today({Key? key}) : super(key: key);

  @override
  State<Today> createState() => _TodayState();
}

class _TodayState extends State<Today> {
  late ThemeData selectedTheme = Provider.of<ColorProvider>(context, listen: false).selectedTheme;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor:context.select<ColorProvider, Color?>((colorProvider) => colorProvider.selectedTheme.colorScheme.primary),
          foregroundColor:context.select<ColorProvider, Color?>((colorProvider) => colorProvider.selectedTheme.colorScheme.onPrimary),
          title: Text('TaskMe'),
          centerTitle: true,),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text(''),
                decoration: BoxDecoration(
                  color: context.select<ColorProvider, Color?>((colorProvider) => colorProvider.selectedTheme.colorScheme.primary),
                ),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Perfil'),
                onTap: () {
                  // Acción al pulsar el elemento del menú
                },
              ),
              ListTile(
                leading: Icon(Icons.campaign_outlined),
                title: Text('Recordatorios'),
                onTap: () {
                  // Acción al pulsar el elemento del menú
                },
              ),
              ListTile(
                leading: Icon(Icons.info_outline),
                title: Text('Info'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Info()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.palette_outlined),
                title: Text('Temas'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChangeColor()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.key),
                title: Text('Clave de acceso'),
                onTap: () {
                  // Acción al pulsar el elemento del menú
                },
              ),
              ListTile(
                leading: Icon(Icons.delete_forever_outlined),
                title: Text('Papelera'),
                onTap: () {
                  // Acción al pulsar el elemento del menú
                },
              ),
            ],
          ),
        ),
        body: const Stack(
          children: [
            Positioned(
              top: 16, // Margen superior de 16 puntos
              left: 0,
              right: 0,
              child: Procesing(),
            ),
            Center(child: TodayWidget()),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddTask()),
            );
          },
          child: Icon(Icons.add),
        ));
  }
}
