import 'package:flutter/material.dart';

//creating a custom widget (createing a button)
class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon, this.onPressed});
  final IconData? icon;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icon,
        color: Colors.white,
      ),
      onPressed: onPressed,
      elevation: 0.0,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        width: 40.0,
        height: 40.0,
      ),
    );
  }
}
