import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore <= 8) {
      resultText = 'You are awesome !';
    } else if (resultScore <= 12) {
  resultText = 'Pretty likeable';
    } else if  (resultScore <= 16) {
  resultText = 'You are so bad';
    } else {
      resultText = 'You are so bad';
    }
    return resultText;
  }


  @override
  Widget build(BuildContext context){
    return Center(
      child: Text(
          resultPhrase,
          style: TextStyle(fontSize: 36,
          fontWeight: FontWeight.bold), //TextStyle
    ), //Text
    ); //Center
  }
}
