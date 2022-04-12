import 'package:flutter/material.dart';

import './restart.dart';

class Result extends StatelessWidget {
  final Function restartAction;
  final int resultScore;

  Result(this.restartAction, this.resultScore);

  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore <= 10) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 15) {
      resultText = 'Pretty likable!';
    } else if (resultScore <= 16) {
      resultText = 'You are ... weird?!';
    } else {
      resultText = 'You\'re are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      width: double.infinity,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Restart(restartAction),
        ],
      ),
    );
  }
}
