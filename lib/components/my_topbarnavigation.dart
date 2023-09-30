import 'package:appfluter_ascom/components/my_buttonbartop.dart';
import 'package:flutter/material.dart';

class MyTopBarNavigation extends StatelessWidget {
  const MyTopBarNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(206, 2, 1, 1),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Container(
          color: const Color.fromRGBO(206, 2, 1, 1),
          height: 45,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              MyButtonBarTop(
                  onTap: null, heightButton: 10, textButton: 'Futbol Chileno'),
              MyButtonBarTop(
                  onTap: null,
                  heightButton: 10,
                  textButton: 'Chilenos por el mundo'),
              MyButtonBarTop(
                  onTap: null,
                  heightButton: 10,
                  textButton: 'Futbol Internacional'),
              MyButtonBarTop(
                  onTap: null, heightButton: 10, textButton: 'Más Deporte'),
              MyButtonBarTop(
                  onTap: null,
                  heightButton: 10,
                  textButton: 'Deporte Femenino'),
            ],
          ),
        ),
      ),
    );
  }
}
