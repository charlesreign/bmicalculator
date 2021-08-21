import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColour = 0xFFEB1555;
const cardColour = 0xFF1D1E33;

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  Color(cardColour),
                  IconContent(FontAwesomeIcons.mars, 'MALE'),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  Color(cardColour),
                  IconContent(FontAwesomeIcons.venus, 'FEMALE'),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ReusableCard(Color(cardColour),Text('Middle')),
        ),
        Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(Color(cardColour),Text('Icon')),
                ),
                Expanded(
                  child: ReusableCard(Color(cardColour),Text('Icon')),
                )
              ],
            )),
        Container(
          color: Color(bottomContainerColour),
          margin: EdgeInsets.all(10.0),
          width: double.infinity,
          height: bottomContainerHeight,
        )
      ],
    );
  }
}

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
        Text(
          gender,
          style: TextStyle(
            fontSize: 18.0,
            color: Color(0xFF8D8E98),
          ),
        )
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  ReusableCard(this.colour, this.cardChild);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
