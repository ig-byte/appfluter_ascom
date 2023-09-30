import 'package:flutter/material.dart';

class ContainerShortNew extends StatelessWidget {
  final String imageURL;
  final String title;
  final String subtitle;

  const ContainerShortNew({
    super.key,
    required this.imageURL,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                //color: const Color.fromARGB(255, 255, 255, 255),
                width: 150,
                height: 120,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(
                    imageURL,
                    height: 80,
                    width: 100,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.bottomLeft,
                  padding: const EdgeInsets.only(bottom: 3),
                  //color: const Color.fromARGB(255, 255, 255, 255),
                  height: 40,
                  child: Text(
                    title,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 136, 136, 136),
                      fontSize: 12,
                    ),
                  ),
                ),
                Container(
                  //color: const Color.fromARGB(255, 255, 255, 255),
                  padding: const EdgeInsets.only(right: 20, bottom: 10),
                  height: 80,
                  child: Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
