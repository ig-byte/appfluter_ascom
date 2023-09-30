import 'package:flutter/material.dart';

class InformationType1 extends StatelessWidget {
  final String info;
  const InformationType1({
    super.key,
    required this.info,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Text(
        info,
        style: const TextStyle(fontSize: 15),
      ),
    );
  }
}
