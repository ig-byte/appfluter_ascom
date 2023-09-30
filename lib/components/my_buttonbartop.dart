import 'package:flutter/material.dart';

class MyButtonBarTop extends StatelessWidget {
  final Function()? onTap;
  final double heightButton;
  final String textButton;

  const MyButtonBarTop(
      {super.key,
      required this.onTap,
      required this.heightButton,
      required this.textButton});

  @override
  Widget build(BuildContext context) {
    const borderColor = Color.fromRGBO(252, 252, 252, 0.549);
    return Container(
      height: heightButton,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      decoration: BoxDecoration(
          color: const Color.fromRGBO(203, 4, 4, 50),
          border: const Border(
            bottom: BorderSide(width: 1.5, color: borderColor),
            top: BorderSide(width: 1.5, color: borderColor),
            left: BorderSide(width: 1.5, color: borderColor),
            right: BorderSide(width: 1.5, color: borderColor),
          ),
          borderRadius: BorderRadius.circular(28)),
      child: Center(
        child: Text(
          textButton,
          style: const TextStyle(color: Colors.white, fontSize: 12),
        ),
      ),
    );
  }
}
