import 'package:appfluter_ascom/components/my_bardates.dart';
import 'package:appfluter_ascom/components/my_barresult.dart';
import 'package:appfluter_ascom/components/my_ligatype.dart';
import 'package:appfluter_ascom/components/my_navigationbar.dart';
import 'package:flutter/material.dart';
import 'package:toggle_list/toggle_list.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const NavigationBarAsCom(),
      appBar: AppBar(
        centerTitle: true,
        elevation: BorderSide.strokeAlignCenter,
        backgroundColor: const Color.fromRGBO(206, 2, 1, 1),
        title: const Text(
          'Resultados',
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: CrossAxisAlignment,
          children: [
            SizedBox(
                child: ToggleList(
              shrinkWrap: true,
              children: [
                ToggleListItem(
                  title: Text('Portada Resultados'),
                  content: Padding(
                    padding: EdgeInsets.all(20),
                    child: Text('Campeonato nacional Scotiabank'),
                  ),
                ),
              ],
            )),
            MyDatesBar(),
            MyLigaType(
              nombreLiga: 'LaLiga EA Sport',
              tipoJornada: 'Jornada 7',
            ),
            MyLigaType(
              nombreLiga: 'SERIE A',
              tipoJornada: 'Jornada 7',
            ),
            MyLigaType(
              nombreLiga: 'LIGA CHILENA',
              tipoJornada: 'Jornada 6',
            ),
          ],
        ),
      ),
    );
  }
}
