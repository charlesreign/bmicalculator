import 'package:flutter/material.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  final IconData icon;
  final String gender;

  IconContent(this.icon, this.gender);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
          color: Color(0xFFFFFFFF),
        ),
        SizedBox(height: 15.0),
        Text(gender, style: labelTextStyle)
      ],
    );
  }
}
