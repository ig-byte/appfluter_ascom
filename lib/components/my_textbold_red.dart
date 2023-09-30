import 'package:flutter/material.dart';

class MyTextBoldRed extends StatelessWidget {
/*
Parameter
*/

  final String text;

  const MyTextBoldRed({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1.5, color: Color.fromRGBO(203, 4, 4, 50)),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Color.fromRGBO(203, 4, 4, 50),
        ),
      ),
    );
  }
}
