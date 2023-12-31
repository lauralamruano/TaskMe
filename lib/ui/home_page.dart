import 'package:flutter/material.dart';

import 'package:block/ui/calendary.dart';
import 'package:block/ui/today.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final List<Widget> pages = [Today(), CalendarPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          selectedItemColor: Theme.of(context).colorScheme.onPrimary,
          unselectedItemColor: Theme.of(context).colorScheme.onPrimary,
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Image.asset('assets/icons/today.vacio.png', height: 32),
                label: "Hoy",
                activeIcon: Image.asset(
                  'assets/icons/today-lleno.png',
                  height: 32,
                )),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/calendario-vacio.png',
                  height: 32,
                ),
                label: "Calendario",
                activeIcon: Image.asset(
                  'assets/icons/calendario-lleno.png',
                  height: 32,
                )),
          ],
        ));
  }
}
