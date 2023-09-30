import 'package:appfluter_ascom/components/my_barresult.dart';
import 'package:flutter/material.dart';

class MyLigaType extends StatelessWidget {
  final String nombreLiga;
  final String tipoJornada;

  const MyLigaType({
    super.key,
    required this.nombreLiga,
    required this.tipoJornada,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Color.fromRGBO(242, 242, 242, 1),
          ),
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(left: 10, top: 20),
          child: Container(
              width: 120,
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(242, 242, 242, 1),
                  border: Border(
                    bottom: BorderSide(
                        color: Color.fromRGBO(177, 0, 0, 1), width: 2),
                  )),
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 10, top: 10, bottom: 2),
              child: Text(nombreLiga)),
        ),
        Container(
          decoration: const BoxDecoration(
              color: Color.fromRGBO(242, 242, 242, 1),
              border: Border(
                  bottom: BorderSide(color: Color.fromRGBO(194, 194, 194, 1)),
                  top: BorderSide(
                      color: Color.fromRGBO(194, 194, 194, 1), width: 2))),
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.all(10),
          child: Text(tipoJornada),
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
          equipoIzquierdaImagen: 'lib/images/equipo3.png',
          equipoDerechaImagen: 'lib/images/equipo4.png',
          horaPartido: '4:00 PM',
          estadio: 'Monumental',
        ),
        const ResultsBar(
          jornada: null,
          equipoIzquierdaImagen: 'lib/images/equipo5.png',
          equipoDerechaImagen: 'lib/images/equipo6.png',
          horaPartido: '3:00 PM',
          estadio: 'CampNou',
        ),
        Container(
          decoration: const BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    color: Color.fromRGBO(194, 194, 194, 1), width: 2),
                top: BorderSide(
                    color: Color.fromRGBO(194, 194, 194, 1), width: 1)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(left: 10, bottom: 10, top: 10),
                height: 50,
                child: const Text(
                  "VER CALENDARIO",
                  style: TextStyle(color: Color.fromRGBO(248, 163, 0, 1)),
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(right: 10, bottom: 10, top: 10),
                height: 50,
                child: const Text("VER CLASIFICACION",
                    style: TextStyle(color: Color.fromRGBO(248, 163, 0, 1))),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
