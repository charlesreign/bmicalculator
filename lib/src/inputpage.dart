import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'custom_widgets/icon_content.dart';
import 'custom_widgets/reuseable_card.dart';
import 'custom_widgets/constants.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                    selectedGender == Gender.male
                        ? Color(cardColour)
                        : Color(inactiveColour),
                    IconContent(FontAwesomeIcons.mars, 'MALE'), () {
                  setState(() {
                    selectedGender = Gender.male;
                  });
                }),
              ),
              Expanded(
                child: ReusableCard(
                    selectedGender == Gender.female
                        ? Color(cardColour)
                        : Color(inactiveColour),
                    IconContent(FontAwesomeIcons.venus, 'FEMALE'), () {
                  setState(() {
                    selectedGender = Gender.female;
                  });
                }),
              ),
            ],
          ),
        ),
        Expanded(
          child: ReusableCard(
            Color(cardColour),
            
          ),
          
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
