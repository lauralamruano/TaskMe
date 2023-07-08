import 'package:flutter/material.dart';

import 'package:block/providers/color_provider.dart';
import 'package:block/ui/drawer.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:block/themes/theme.dart';


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
        child: MyDrawer()
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
