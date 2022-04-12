import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(

      width: 120,
      margin: EdgeInsets.all(4),
      child: RaisedButton(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        color: Colors.blue,
        textColor: Colors.white,
        padding: EdgeInsets.all(11),
      
        child: Text(
          answerText,
          style: TextStyle(
            letterSpacing: 1.0,
          ),
        ),
        onPressed: selectHandler,
      ),
    );
  }
}
