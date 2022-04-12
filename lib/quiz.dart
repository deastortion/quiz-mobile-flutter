import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;

  final Function answerQuestion;

  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        padding: EdgeInsets.only(top: 80),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Question(
              questions[questionIndex]['questionText'],
            ),
            ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
                .map((answer) {
              return Answer(() => answerQuestion(answer['score']), answer['text']);
            }).toList(),
            // Restart(restart),
          ],
        ),
      ),
    );
  }
}
