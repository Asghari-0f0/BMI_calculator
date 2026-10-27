import 'package:flutter/material.dart';
import 'package:my_app/components/bottom_Button.dart';
import 'package:my_app/constants.dart';
import 'package:my_app/components/reusable_card.dart';

class ResultsPage extends StatelessWidget {
  final String? bmiResult, resultText, interpretation;
  ResultsPage({
    required this.bmiResult,
    required this.resultText,
    required this.interpretation,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Result Page')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(15),
              child: Text('Your Result', style: kTitleTextStyle),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(resultText!.toUpperCase(), style: kResultTextStyle),
                  Text(bmiResult!, style: kBMITextStyle),
                  Column(
                    children: [
                      Text('Normal BMI Range:', style: kGrayBodyTextStyle),
                      Text('18.5 -  25 kg/m2', style: kBodyTextStyle),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      interpretation!,
                      style: kBodyTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            title: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
