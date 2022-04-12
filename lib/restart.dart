import 'package:flutter/material.dart';

class Restart extends StatelessWidget {
  final Function refreshAction;

  Restart(this.refreshAction);
  @override
  Widget build(BuildContext context) {
    return Container(
      // child: RaisedButton(
      //   onPressed: refreshAction, 
      //   child: new Icon(Icons.refresh),
        
      // ),
      margin: EdgeInsets.only(top: 15),
      child: RawMaterialButton(
        fillColor: Colors.blue[400],
        elevation: 5,
        onPressed: refreshAction,
        child: Icon(
          Icons.refresh,
          size: 40,
          color: Colors.white,
          ),
        padding: EdgeInsets.all(7),
        shape: CircleBorder(),
      ),
    );
  }
}