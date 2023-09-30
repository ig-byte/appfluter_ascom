import 'package:appfluter_ascom/components/my_navigationbar.dart';
import 'package:flutter/material.dart';

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
      body: const Center(
        child: SingleChildScrollView(
          child: Expanded(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                  child: Text("Portada Resultados"),
                ),
                SizedBox(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("MIÉ 27"),
                      Text("Ayer"),
                      Text("VIE 29"),
                    ],
                  ),
                ),
                SizedBox(
                  //height: 50,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text("JORNADA 7"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Celta"),
                            Text("Resultado"),
                            Text("Alavez"),
                            Text(">"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Celta"),
                            Text("Resultado"),
                            Text("Alavez"),
                            Text(">"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Celta"),
                            Text("Resultado"),
                            Text("Alavez"),
                            Text(">"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(""),
                            Text("VER CALENDARIO"),
                            Text("VER CLASIFICACIÓN"),
                            Text(""),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                  child: Text("Data 1"),
                ),
                SizedBox(
                  height: 50,
                  child: Text("Data 1"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
