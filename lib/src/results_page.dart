import 'package:bmicalculator/src/custom_widgets/bottombutton.dart';
import 'package:bmicalculator/src/custom_widgets/reuseable_card.dart';
import 'package:flutter/material.dart';
import 'custom_widgets/constants.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                  child: Text(
            'Your Result',
            style: titleTextStyle,
          ))),
          Expanded(
            flex: 5,
            child: ReusableCard(
              Color(cardColour),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Normal', style: resultTextStyle),
                  Text('25', style: BMITextStyle),
                  Text(
                    'Your BMI result is quite low, you should eat offen',
                    style: bodyTextStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          BottomButton(() {
            Navigator.pop(context);
          }, 'Re-calculate')
        ],
      ),
    );
  }
}
