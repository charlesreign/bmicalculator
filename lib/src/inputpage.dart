import 'package:bmicalculator/src/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'custom_widgets/icon_content.dart';
import 'custom_widgets/reuseable_card.dart';
import 'custom_widgets/constants.dart';
import 'custom_widgets/bottombutton.dart';
import 'custom_widgets/round_button_icon.dart';
import 'calculator_brain.dart';

enum Gender { male, female }
int height = 180;
int weight = 60;
int age = 20;

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
      crossAxisAlignment: CrossAxisAlignment.stretch,
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
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: labelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: numberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: labelTextStyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0xFF8d8E98),
                      thumbColor: Color(0xFFEB15555),
                      overlayColor: Color(0x29EB15555),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 13.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 20.0),
                    ),
                    child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        }),
                  )
                ],
              )),
        ),
        Expanded(
            child: Row(
          children: [
            Expanded(
              child: ReusableCard(
                  Color(cardColour),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'WEIGHT',
                        style: labelTextStyle,
                      ),
                      Text(
                        weight.toString(),
                        style: numberTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: () {
                              setState(() {
                                weight--;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                          )
                        ],
                      )
                    ],
                  )),
            ),
            Expanded(
              child: ReusableCard(
                  Color(cardColour),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'AGE',
                        style: labelTextStyle,
                      ),
                      Text(
                        age.toString(),
                        style: numberTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: () {
                              setState(() {
                                age--;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: () {
                              setState(() {
                                age++;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  )),
            )
          ],
        )),
        BottomButton(() {
          CalculatorBrain calc = CalculatorBrain(weight,height);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ResultPage(
              calc.calculateBMI(),
              calc.getResult(),
              calc.getInterpretation()
            )),
          );
        }, 'Calculate'),
      ],
    );
  }
}
