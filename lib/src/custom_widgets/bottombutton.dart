import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton(this.onTap, this.textVal);

  final Function()? onTap;
  final String textVal;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(textVal, style: largeTextButton),
        ),
        color: Color(bottomContainerColour),
        margin: EdgeInsets.all(10.0),
        width: double.infinity,
        height: bottomContainerHeight,
      ),
    );
  }
}

