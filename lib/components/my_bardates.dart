import 'package:flutter/material.dart';

class MyDatesBar extends StatelessWidget {
  const MyDatesBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Color.fromRGBO(242, 242, 242, 1),
          border: Border(
              bottom: BorderSide(color: Color.fromRGBO(194, 194, 194, 1)),
              top: BorderSide(
                  color: Color.fromRGBO(194, 194, 194, 1), width: 2))),
      height: 50,
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "MIÉ 27",
              style: TextStyle(
                color: Color.fromRGBO(156, 156, 156, 1),
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "HOY",
                  style: TextStyle(
                      color: Color.fromRGBO(112, 112, 112, 1),
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
                Text(
                  "29 SEPT 2023",
                  style: TextStyle(
                    color: Color.fromRGBO(156, 156, 156, 1),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
            Text(
              "MIÉ 27",
              style: TextStyle(
                color: Color.fromRGBO(156, 156, 156, 1),
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
