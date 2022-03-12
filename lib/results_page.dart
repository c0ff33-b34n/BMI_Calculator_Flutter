import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bottom_button.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: (Text(
                'Your Result',
                style: kTitleTextStyle,
              )),
            ),
          ),
          Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Obese',
                      style: kResultTextStyle,
                    ),
                    Text(
                      '38.3',
                      style: kBMITextStyle,
                    ),
                    Text(
                        'Your BMI reading is abysmal, don\'t eat so much fatty.',
                        textAlign: TextAlign.center,
                        style: kBodyTextStyle),
                  ],
                ),
              )),
          BottomButton(
            'RE-CALCULATE',
            () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}