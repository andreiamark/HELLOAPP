import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final selectHandler;
  final answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context){
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color:Colors.pink,
        textColor: Colors.white,
        child:Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}