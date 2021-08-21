import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'custom_widgets/icon_content.dart';
import 'custom_widgets/reuseable_card.dart';

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
          child: ReusableCard(Color(cardColour)),
        ),
        Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(Color(cardColour)),
                ),
                Expanded(
                  child: ReusableCard(Color(cardColour)),
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



