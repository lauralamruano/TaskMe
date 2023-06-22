import 'package:block/themes/theme.dart';
import 'package:block/ui/eventWidget.dart';
import 'package:block/ui/info.dart';
import 'package:block/ui/procesing_work_widget.dart';
import 'package:flutter/material.dart';

class Today extends StatefulWidget {
  const Today({Key? key}) : super(key: key);

  @override
  State<Today> createState() => _TodayState();
}

class _TodayState extends State<Today> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: lightColorScheme.primary,
          foregroundColor: lightColorScheme.onPrimary,
          title: Center(child: Text('TaskMe')),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('Menú'),
                decoration: BoxDecoration(
                  color: lightColorScheme.primary,
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
                  // Acción al pulsar el elemento del menú
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
          onPressed: () {},
          child: Icon(Icons.add),
        ));
  }
}

class TodayWidget extends StatefulWidget {
  const TodayWidget({Key? key}) : super(key: key);

  @override
  State<TodayWidget> createState() => _TodayWidgetState();
}

class _TodayWidgetState extends State<TodayWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 80, horizontal: 12),
      width: 300,
      height: 400,
      decoration: BoxDecoration(
        color: lightColorScheme.primary,
        shape: BoxShape.circle,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 40,
          ),
          Center(
              child: Text(
            'Hoy',
            style: TextStyle(
                fontSize: 60,
                color: lightColorScheme.secondaryContainer,
                fontFamily: 'Garamond'),
          )),
          SizedBox(
            height: 30,
          ),
          EventWidget(),
        ],
      ),
    );
  }
}
