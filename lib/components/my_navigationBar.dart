import 'package:flutter/material.dart';

class NavigationBarAsCom extends StatelessWidget {
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
          icon: Icon(Icons.business),
          label: 'Resultados',
        ),
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
