import 'package:flutter/material.dart';

import '../themes/theme_widget.dart';
import 'info.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(''),
            decoration: BoxDecoration(
              color:Theme.of(context).colorScheme.primary,
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
    );
  }
}
