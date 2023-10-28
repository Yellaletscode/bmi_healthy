import 'package:flutter/material.dart';

class ReusableCode extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  // final Function() onpressed;
  ReusableCode({required this.color, required this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: cardChild,
      // height: 200,
      // width: 170,
    );
  }
}
