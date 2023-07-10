import 'package:flutter/material.dart';

import 'package:block/ui/drawer.dart';
import 'package:block/ui/today_widget.dart';
import 'package:block/ui/add_task.dart';
import 'package:block/ui/procesing_work_widget.dart';

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
          backgroundColor:Theme.of(context).colorScheme.primary,
          foregroundColor:Theme.of(context).colorScheme.onPrimary,
          title: Text('TaskMe'),
          centerTitle: true,),
        drawer: Drawer(
          child: MyDrawer()
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
          backgroundColor: Theme.of(context).colorScheme.primary,
          foregroundColor:Theme.of(context).colorScheme.onPrimary,
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
