//Package
import 'package:crash_course/result.dart';
import 'package:flutter/material.dart';

//External Widgets
import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

//_MyAppState makes the class protected, so u cannot access it from other places
class _MyAppState extends State<MyApp> {
  //Or final questions = const [...]; Just to avoid scoping errors
  static const _questions = [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 2},
        {'text': 'White', 'score': 1},
      ]
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Horse', 'score': 10},
        {'text': 'Dog', 'score': 5},
        {'text': 'Cat', 'score': 4},
        {'text': 'Elephant', 'score': 7},
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _restart() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
    print('Restarted!');
  }

  void _answerQuestion(int score) {
    if (_questionIndex < _questions.length) {
      _totalScore += score;
      print('We have more questions!');
      //setState changes the state and redraws the widget
      //Forces to rerender particular component of User Interface
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
    } else {
      print('You answered all the questions!');
    }

    print(_questionIndex);
  }

  @override //Means that we are using the build method to our own stuff, not editing StateLessWidget ...  Probably ... IDK
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          //Body and child takes only one Widget!
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions)
              : Result(_restart, _totalScore)),
    );
  }
}

// Every Widget is just a Dart class which has a build method
//Don't forget to add parenthesees to show that something is a class
