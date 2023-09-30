import 'package:appfluter_ascom/screens/front_screen.dart';
import 'package:appfluter_ascom/screens/login_screen.dart';
import 'package:appfluter_ascom/screens/news_screen.dart';
import 'package:appfluter_ascom/screens/results_screen.dart';
import 'package:flutter/material.dart';
/*
Pagina principal
cambio de comentario
*/

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'ASCOM',
        home: ResultScreen());
  }
}
