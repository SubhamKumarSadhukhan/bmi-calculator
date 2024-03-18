import 'package:bmi/components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({Key? key, required this.bmiResult, required this.interpretation, required this.resultText}) : super(key: key);

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BMI CALCULATOR')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget> [
        Expanded(child: Container(
          padding: const EdgeInsets.all(15),
          alignment: Alignment.bottomLeft,
          child: const Text('Your Result', style: kTitleTextStyle),
        )),
        Expanded(
          flex: 5,
          child: ReusableCard(
            color: kActiveCardColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(resultText, style: kResultTextStyle,),
                Text(bmiResult, style: kBMITextStyle,),
                Text(interpretation, style: kBodyTextStyle),
              ],
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              child: const Center(
                child: Text('RE-CALCULATE', style: kLargeButtonTextStyle),
              ),
              color: kBottomContainerColor,
              margin: const EdgeInsets.only(top: 10),
              width: double.infinity,
              height: kBottomContainerHeight,
            ),
          ),
        ),
      ],)
    );
  }
}
