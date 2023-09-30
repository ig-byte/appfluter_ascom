import 'package:flutter/material.dart';

class BarAuthor extends StatelessWidget {
  final String author;
  final String dateString;
  final String dataTimeString;
  final String? comments;
  const BarAuthor({
    super.key,
    required this.author,
    required this.dateString,
    required this.dataTimeString,
    required this.comments,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Divider(
              height: 8,
              color: Color.fromARGB(255, 137, 137, 137),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          author,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Color.fromARGB(255, 85, 85, 85),
                          ),
                        ),
                        Row(
                          children: [
                            Text(dateString,
                                style: const TextStyle(
                                    fontSize: 11,
                                    color: Color.fromRGBO(83, 83, 83, 1))),
                            const SizedBox(
                              child: Text(
                                textAlign: TextAlign.center,
                                "·",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(109, 109, 109, 1)),
                              ),
                            ),
                            Text(
                              dataTimeString,
                              style: const TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(248, 161, 0, 1),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  child: Row(
                    children: [
                      SizedBox(
                        child: Icon(
                          Icons.messenger_outlined,
                          color: Color.fromRGBO(206, 2, 1, 1),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "0 Comentario",
                        style: TextStyle(
                          color: Color.fromRGBO(41, 41, 41, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Divider(
              height: 5,
              color: Color.fromARGB(255, 137, 137, 137),
            )
          ],
        ),
      ),
    );
  }
}
