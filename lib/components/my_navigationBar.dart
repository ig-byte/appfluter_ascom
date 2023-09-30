import 'package:appfluter_ascom/screens/front_screen.dart';
import 'package:appfluter_ascom/screens/results_screen.dart';
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
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.abc_outlined),
                label: 'Portada',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.abc_outlined),
                label: 'Resultados',
              ),
            ]));
  }
}

/*
class NavigationBarAsCom extends StatefulWidget {
  const NavigationBarAsCom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedItemColor: const Color.fromARGB(255, 75, 75, 75),
      selectedItemColor: const Color.fromARGB(255, 177, 159, 152),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Portada',
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.business), label: 'Resultados'),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label: 'Mi Zona',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label: 'Videos',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.menu),
          label: 'lib/screens/results_screen.dart',
        ),
      ],
    );
  }
}
*/