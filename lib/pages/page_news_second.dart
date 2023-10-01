import 'package:appfluter_ascom/components/components.dart';
import 'package:flutter/material.dart';

class NewsScreenOther extends StatelessWidget {
  const NewsScreenOther({super.key});
  @override
  Widget build(BuildContext context) {
    const info1 =
        'Nicolás Jarry (23°) sacó adelante una dura batalla ante el italiano Matteo Arnaldi por 7-6(4), 6-7(4) y 6-3 y avanzó a los cuartos de final del ATP 500 de Beijing en China.\n\nEl nacional demostró que la contudente victoria ante el griego Stefanos Tsitsipas (5°) no fue casualidad y superó a Arnaldi, apelando a su experiencia y capacidad de jugar mejor los momentos claves del tercer set. De paso, vengó a su compatriota Cristian Garin, quien lo había sufrido en Copa Davis.';
    const info2 =
        'Gracias a esta victoria Jarry ya se encuentra instalado entre los ocho mejores del certamen y ahora espera rival entre el alemán el español Alejandro Davidovich Fokina (25°) y el alemán Alexander Zverev, octavo cabeza de serie del torneo.';
    const titleNoticia =
        'Jarry sigue imparable en China: venga a Garín y este será su nuevo ranking ATP';
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
              imageURL: 'lib/images/img5.png',
              title: 'TENIS',
              subtitle: titleNoticia,
            ),
            BarAuthor(
              author: 'SERGIO LIVINGSTON',
              dateString: '25 Septiembre 2023',
              dataTimeString: '05:32 CEST',
              comments: null,
            ),
            InformationType1(
              info: ('$info1\n\n$info2'),
            )
          ],
        ),
      ),
    );
  }
}
