import 'package:block/themes/theme.dart';
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
        body: Stack(
          children: const [
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
          shape: BoxShape.circle,),
    );
  }
}


