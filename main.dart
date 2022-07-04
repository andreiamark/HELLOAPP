    import 'package:flutter/material.dart';


    import './quiz.dart';
    import './result.dart';



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

    class _MyAppState extends State<MyApp> {
      final _questions = const [
        {
          'questionText': 'What\'s your favorite color?',
          'answers': [
            {'text': 'Black', 'score': 10},
            {'text': 'Red', 'score': 5},
            {'text': 'Green', 'score': 7},
            {'text': 'White', 'score': 9},
          ],
        },
        {
          'questionText': 'What\'s your favorite animal?',
          'answers': [
            {'text': 'Rabbit', 'score': 6},
            {'text': 'Elephant', 'score': 7},
            {'text': 'Monkey', 'score': 8},
            {'text': 'Snake', 'score': 10},
          ],
        },
        {
          'questionText': 'What\'s your favorite food?',
          'answers': [
            {'text': 'Pasta', 'score': 8},
            {'text': 'Pizza', 'score': 10},
            {'text': 'Burger', 'score': 5},
            {'text': 'Pancakes', 'score': 7},
          ],
        },
      ];

      var _questionIndex = 0;
      var _totalScore = 0;

      void _answerQuestion(int score) {
        _totalScore += score;

        setState(() {
          _questionIndex = _questionIndex + 1;
        });
        print(_questionIndex);

        if (_questionIndex < _questions.length) {
          print("We have more questions!");
        } else {
          print("no more questions!");
        }
      }


        @override
        Widget build(BuildContext context) {
          return MaterialApp(
            home: Scaffold(
              appBar: AppBar(
                title: Text("Andrea's first app"),
              ), //AppBar
              body: _questionIndex < _questions.length
                  ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              ) //Quiz
                  : Result(_totalScore),
            ), //Scaffold
          ); //MaterialApp
        }
      }
}

