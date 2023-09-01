import 'package:first_app_flutter/pages/add_page.dart';
import 'package:first_app_flutter/pages/planning_page.dart';
import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _currentIndex = 0;
   setCurrentIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
   }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: titlePages(),
          backgroundColor: const Color(0x665A98D9),
        ),
        body: pages(),
        backgroundColor: const Color.fromARGB(255, 229, 231, 220),
        bottomNavigationBar: navBar(),
      ),
    );
  }

  BottomNavigationBar navBar() {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) => setCurrentIndex(index),
        backgroundColor: const Color(0x665A98D9),
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Planning',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Add',
          ),
        ],
      );
  }

  Text titlePages() {
    return [
          const Text('home'),
          const Text('Planning of conference'),
          const Text('Adding form'),
        ][_currentIndex];
  }

  Widget pages() {
    return [
        const HomePage(),
        const PlanningPage(),
        const AddPage(),
      ][_currentIndex];
  }
}
