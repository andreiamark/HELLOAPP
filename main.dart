import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';


void main()  {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{

  @override
  State<StatefulWidget> createState(){
    //TODO:implementcreateState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
  var _questionIndex = 0;


  void _answerQuestion() {

    setState((){
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context){
    var questions = [
      {
        'questionText':'What\'s your favorite color?',
        'answers':['Black', 'Red', 'Green', 'White'],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['Rabbit', 'Snake', 'Monkey', 'Elephant'],
      },
      {
        'questionText': 'What\'s your favorite food?',
        'answers': ['Pasta', 'Pizza', 'Burger', 'Salad'],
      },
    ];

    // questions = []; // does not work if questions is a const


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:Text("Andrea's first app"),
        ),
        body: Column(
          children:[
            Question(
              questions [_questionIndex]['questionText'] as String,
            ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}

