import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  final double heightButton;
  final String textButton;

  const MyButton(
      {super.key,
      required this.onTap,
      required this.heightButton,
      required this.textButton});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: heightButton,
        //padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
            color: const Color.fromRGBO(206, 2, 1, 1),
            borderRadius: BorderRadius.circular(28)),
        child: Center(
          child: Text(
            textButton,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
