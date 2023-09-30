import 'package:flutter/material.dart';

class ResultsBar extends StatelessWidget {
  final String? jornada;
  final String equipoIzquierdaImagen;
  final String equipoDerechaImagen;
  final String horaPartido;
  final String estadio;

  const ResultsBar({
    super.key,
    required this.jornada,
    required this.equipoIzquierdaImagen,
    required this.equipoDerechaImagen,
    required this.horaPartido,
    required this.estadio,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                width: 25,
              ),
              Image.asset(
                equipoIzquierdaImagen,
                width: 65,
                height: 50,
              ),
              Column(
                children: [
                  Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 80,
                      color: const Color.fromRGBO(248, 162, 0, 1),
                      child: Text(
                        horaPartido,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )),
                  Container(
                      alignment: Alignment.center,
                      height: 25,
                      width: 80,
                      color: const Color.fromRGBO(208, 137, 3, 1),
                      child: Text(
                        estadio,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w300),
                      ))
                ],
              ),
              Image.asset(
                equipoDerechaImagen,
                height: 50,
                width: 50,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(Icons.lock_clock),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
