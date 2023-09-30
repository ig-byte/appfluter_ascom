import 'package:appfluter_ascom/components/my_author.dart';
import 'package:appfluter_ascom/components/my_infotype1.dart';
import 'package:appfluter_ascom/components/my_topnews.dart';
import 'package:flutter/material.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    const info1 =
        'El Campeonato Ascenso 2023 entra en la etapa más decisiva del año. Quedan tres fechas para el fin de la fase regular, que concluirá con el paso directo del monarca a Primera División. Cobreloa es el líder con 48 puntos y, después de más de siete años en la serie, posee la mejor chance para alzar el trofeo. La expectación es gigante en Calama y Rodrigo Pérez, un histórico del cuadro nortino, dialogó con AS horas antes del partido clave contra Temuco (44), en el estadio Germán Becker.';
    const info2 =
        'El plantel ha hecho una muy buena campaña. Esperamos que se cumpla el anhelo de tantos años de volver a Primera División, ha sido difícil el camino. Han venido jugando bastante bien, han sido regulares. Están en una instancia muy linda y depende exclusivamente de ellos”, sostuvo Pérez, quien ganó tres títulos nacionales en Calama y también fue DT del cuadro loíno en 2018.';
    const titleNoticia =
        'En Cobreloa creen que este año cambia la historia y esta es la razón: “Creo que fue importante...”';
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const BackButton(
          onPressed: null,
        ),
        elevation: BorderSide.strokeAlignCenter,
        backgroundColor: const Color.fromRGBO(206, 2, 1, 1),
        title: const Text(
          'futbol',
          style: TextStyle(fontSize: 18),
        ),
        actions: const [
          Padding(
              padding: EdgeInsets.only(right: 20, top: 5),
              child: Icon(Icons.share))
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            MyTopNews(
              imageURL: 'lib/images/img4.png',
              title: 'ASCENSO',
              subtitle: titleNoticia,
            ),
            BarAuthor(
              author: 'FELIPE SILVA',
              dateString: '27 Septiembre 2023',
              dataTimeString: '08:23 CEST',
              comments: null,
            ),
            InformationType1(
              info: info1 + '\n\n' + info2,
            )
          ],
        ),
      ),
    );
  }
}
