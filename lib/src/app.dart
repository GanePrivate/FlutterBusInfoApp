import 'package:flutter/material.dart';
import 'package:flutter_bus_app/src/screens/allSchedule.dart';

import 'screens/toAit.dart';
import 'screens/toYakusa.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '愛工大バス時刻案内',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  static const _screens = [HomeScreen(), ToYakusaScreen(), ScheduleScreen()];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _screens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.school_outlined), label: '大学行き'),
            BottomNavigationBarItem(
                icon: Icon(Icons.train_outlined), label: '八草行き'),
            BottomNavigationBarItem(icon: Icon(Icons.schedule), label: '全ダイヤ')
          ],
          type: BottomNavigationBarType.fixed,
        ));
  }
}
