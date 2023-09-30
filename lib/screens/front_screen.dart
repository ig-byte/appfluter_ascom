import 'package:appfluter_ascom/components/my_buttonbartop.dart';
import 'package:appfluter_ascom/components/my_shortnews.dart';
import 'package:appfluter_ascom/components/my_topnews.dart';
import 'package:appfluter_ascom/screens/login_screen.dart';
import 'package:appfluter_ascom/screens/news_screen.dart';
import 'package:flutter/material.dart';

class FrontScreen extends StatelessWidget {
  const FrontScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: BorderSide.strokeAlignCenter,
          backgroundColor: const Color.fromRGBO(206, 2, 1, 1),
          title: Image.asset(
            'lib/images/iconAs.png',
            width: 60,
            height: 120,
          ),
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const LoginScreen()));
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 20, top: 5),
                child: Image.asset(
                  'lib/images/iconUser.png',
                  width: 25,
                ),
              ),
            )
          ],
        ),
        body: Column(
          children: [
            const MyTopBarNavigation(),
            /* Noticias Pequeñas
            */
            Expanded(
              child: ListView(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const NewsScreen()));
                    },
                    child: const MyTopNews(
                      imageURL: 'lib/images/img3.png',
                      title: 'ASCENSO',
                      subtitle:
                          'San Luis ponía en riesgo la liguilla, pero ‘Chupete’ Suazo inventó un golazo',
                    ),
                  ),
                  const Divider(
                    thickness: BorderSide.strokeAlignOutside,
                    height: 5,
                    color: Color.fromRGBO(20, 20, 20, 20),
                  ),
                  const ContainerShortNew(
                    imageURL: 'lib/images/img1.png',
                    title: 'Cobreloa - Colo Colo',
                    subtitle:
                        'Esto hace grande el clásico Colo Colo - Cobreloa: ni la U, ni la UC se acercan',
                  ),
                  const Divider(
                    thickness: BorderSide.strokeAlignOutside,
                    height: 5,
                    color: Color.fromRGBO(20, 20, 20, 20),
                  ),
                  const ContainerShortNew(
                    imageURL: 'lib/images/img2.png',
                    title: 'ENTREVISTA AS',
                    subtitle:
                        '"Los panamericanos serán una fiesta súper grande; marcaán un antes y un después"',
                  ),
                  const Divider(
                    thickness: BorderSide.strokeAlignOutside,
                    height: 5,
                    color: Color.fromRGBO(20, 20, 20, 20),
                  ),
                  const ContainerShortNew(
                    imageURL: 'lib/images/img3.png',
                    title: 'ASCENSO',
                    subtitle:
                        'San Luis ponía en riesgo la liguilla, pero ‘Chupete’ Suazo inventó un golazo',
                  ),
                  const Divider(
                    thickness: BorderSide.strokeAlignOutside,
                    height: 5,
                    color: Color.fromRGBO(20, 20, 20, 20),
                  ),
                  const ContainerShortNew(
                    imageURL: 'lib/images/img1.png',
                    title: 'Cobreloa - Colo Colo',
                    subtitle:
                        'Esto hace grande el clásico Colo Colo - Cobreloa: ni la U, ni la UC se acercan',
                  ),
                  const Divider(
                    thickness: BorderSide.strokeAlignOutside,
                    height: 5,
                    color: Color.fromRGBO(20, 20, 20, 20),
                  ),
                  const ContainerShortNew(
                    imageURL: 'lib/images/img2.png',
                    title: 'ENTREVISTA AS',
                    subtitle:
                        '"Los panamericanos serán una fiesta súper grande; marcarán un antes y un después"',
                  ),
                  const Divider(
                    thickness: BorderSide.strokeAlignOutside,
                    height: 5,
                    color: Color.fromRGBO(20, 20, 20, 20),
                  ),
                  const ContainerShortNew(
                    imageURL: 'lib/images/img3.png',
                    title: 'ASCENSO',
                    subtitle:
                        'San Luis ponía en riesgo la liguilla, pero ‘Chupete’ Suazo inventó un golazo',
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

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
