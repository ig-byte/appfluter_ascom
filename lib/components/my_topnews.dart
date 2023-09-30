import 'package:flutter/material.dart';

class MyTopNews extends StatelessWidget {
  final String imageURL;
  final String title;
  final String subtitle;

  const MyTopNews({
    super.key,
    required this.imageURL,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //color: const Color.fromRGBO(209, 13, 13, 1),
      //height: 250,
      child: Column(
        children: [
          Image.asset(imageURL),
          Container(
            alignment: Alignment.bottomLeft,
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Text(title,
                style: const TextStyle(
                  color: Color.fromARGB(255, 136, 136, 136),
                  fontSize: 12,
                )),
          ),
          Container(
            padding:
                const EdgeInsets.only(right: 10, left: 10, bottom: 10, top: 2),
            child: Text(subtitle,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                )),
          ),
        ],
      ),
    );
  }
}
