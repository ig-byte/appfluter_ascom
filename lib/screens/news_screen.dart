import 'package:appfluter_ascom/components/my_author.dart';
import 'package:appfluter_ascom/components/my_infotype1.dart';
import 'package:appfluter_ascom/components/my_topnews.dart';
import 'package:flutter/material.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
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
              imageURL: 'lib/images/img3.png',
              title: 'ASCENSO',
              subtitle:
                  'San Luis ponía en riesgo la liguilla, pero ‘Chupete’ Suazo inventó un golazo',
            ),
            BarAuthor(
              author: 'FELIPE SILVA',
              dateString: '27 Septiembre 2023',
              dataTimeString: '08:23 CEST',
              comments: null,
            ),
            InformationType1(
              info:
                  'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. \n\nLorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. \n\nNo sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas',
            )
          ],
        ),
      ),
    );
  }
}
