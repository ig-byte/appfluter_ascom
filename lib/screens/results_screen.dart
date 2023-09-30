import 'package:appfluter_ascom/components/my_barresult.dart';
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
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: CrossAxisAlignment,
          children: [
            const SizedBox(
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
            Container(
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(242, 242, 242, 1),
                  border: Border(
                      bottom:
                          BorderSide(color: Color.fromRGBO(194, 194, 194, 1)),
                      top: BorderSide(
                          color: Color.fromRGBO(194, 194, 194, 1), width: 2))),
              height: 50,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "MIÉ 27",
                      style: TextStyle(
                        color: Color.fromRGBO(156, 156, 156, 1),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "HOY",
                          style: TextStyle(
                              color: Color.fromRGBO(112, 112, 112, 1),
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                        Text(
                          "29 SEPT 2023",
                          style: TextStyle(
                            color: Color.fromRGBO(156, 156, 156, 1),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                    Text(
                      "MIÉ 27",
                      style: TextStyle(
                        color: Color.fromRGBO(156, 156, 156, 1),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const ResultsBar(
              jornada: null,
              equipoIzquierdaImagen: 'lib/images/equipo1.png',
              equipoDerechaImagen: 'lib/images/equipo2.png',
              horaPartido: '7:00 PM',
              estadio: 'Nacional',
            ),
            const ResultsBar(
              jornada: null,
              equipoIzquierdaImagen: 'lib/images/equipo1.png',
              equipoDerechaImagen: 'lib/images/equipo2.png',
              horaPartido: '7:00 PM',
              estadio: 'Nacional',
            ),
            const ResultsBar(
              jornada: null,
              equipoIzquierdaImagen: 'lib/images/equipo1.png',
              equipoDerechaImagen: 'lib/images/equipo2.png',
              horaPartido: '7:00 PM',
              estadio: 'Nacional',
            ),
            const ResultsBar(
              jornada: null,
              equipoIzquierdaImagen: 'lib/images/equipo1.png',
              equipoDerechaImagen: 'lib/images/equipo2.png',
              horaPartido: '7:00 PM',
              estadio: 'Nacional',
            ),
            const ResultsBar(
              jornada: null,
              equipoIzquierdaImagen: 'lib/images/equipo1.png',
              equipoDerechaImagen: 'lib/images/equipo2.png',
              horaPartido: '7:00 PM',
              estadio: 'Nacional',
            ),
            const ResultsBar(
              jornada: null,
              equipoIzquierdaImagen: 'lib/images/equipo1.png',
              equipoDerechaImagen: 'lib/images/equipo2.png',
              horaPartido: '7:00 PM',
              estadio: 'Nacional',
            ),
            const SizedBox(
              height: 50,
              child: Text("Data 1"),
            ),
            const SizedBox(
              height: 50,
              child: Text("Data 1"),
            ),
          ],
        ),
      ),
    );
  }
}
