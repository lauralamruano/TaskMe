import 'package:block/providers/color_provider.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:block/themes/theme.dart';

import 'info.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  late ThemeData selectedTheme = Provider.of<ColorProvider>(context, listen: false).selectedTheme;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TaskMe'),
        centerTitle: true,
        backgroundColor: context.select<ColorProvider, Color?>((colorProvider) => colorProvider.selectedTheme.colorScheme.primary),
        foregroundColor:context.select<ColorProvider, Color?>((colorProvider) => colorProvider.selectedTheme.colorScheme.onPrimary),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Menú'),
              decoration: BoxDecoration(
                color: context.select<ColorProvider, Color?>((colorProvider) => colorProvider.selectedTheme.colorScheme.primary),
              ),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('Info'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Info()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Configuración'),
              onTap: () {
                // Acción al pulsar el elemento del menú
              },
            ),
          ],
        ),
      ),
      body: SfCalendar(
        view: CalendarView.month,
        dataSource: MeetingDataSource(getAppointments()),
      ),
    );
  }
}

List<Appointment> getAppointments() {
  List<Appointment> meetings = <Appointment>[];
  final DateTime today = DateTime.now();
  final DateTime startTime =
  DateTime(today.year, today.month, today.day, 9, 0, 0); //que empiece a la hora actual
  final DateTime endTime = startTime.add(const Duration(hours: 2)); //que termine cuando se cierre una variable por ejemplo
  meetings.add(
    Appointment(
      startTime: startTime,
      endTime: endTime,
      subject: 'Meeting',
      color: lightColorScheme.primary,
      isAllDay: false,
    ),
  );
  return meetings;
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Appointment> source) {
    appointments = source;
  }
}
