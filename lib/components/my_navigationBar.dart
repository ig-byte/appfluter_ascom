// ignore: file_names
import 'package:appfluter_ascom/pages/pages.dart';
import 'package:flutter/material.dart';

class BottomTabBar extends StatefulWidget {
  const BottomTabBar({Key? key}) : super(key: key);

  @override
  State<BottomTabBar> createState() => _BottomTabBarState();
}

class _BottomTabBarState extends State<BottomTabBar> {
  int _index = 0;
  final screens = [
    const FrontScreen(),
    const ResultScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[_index],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _index,
            onTap: (value) {
              setState(() {
                _index = value;
              });
            },
            backgroundColor: const Color.fromARGB(255, 227, 227, 227),
            selectedItemColor: const Color.fromRGBO(206, 2, 1, 1),
            items: const [
              BottomNavigationBarItem(
                backgroundColor: Colors.amber,
                icon: Icon(Icons.home),
                label: 'Portada',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.backup_table),
                label: 'Resultados',
              ),
            ]));
  }
}
