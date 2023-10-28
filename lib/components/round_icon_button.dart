import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function() onpress;
  const RoundIconButton({
    required this.icon,
    required this.onpress,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      elevation: 0.0,
      // disabledElevation: 10,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      onPressed: onpress,
      shape: CircleBorder(),
      fillColor: Color(0xFF4c4f5e),
    );
  }
}
