import 'package:first_app/result.dart';
import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final questions = const [
    {
      'questionText': 'What\'s your favourite animal?',
      'answerText': [
        {'text': 'tiger', 'score': 10},
        {'text': 'lion', 'score': 8},
        {'text': 'cat', 'score': 6},
        {'text': 'bear', 'score': 4}
      ]
    },
    {
      'questionText': 'What\'s your favourite color?',
      'answerText': [
        {'text': 'black', 'score': 9},
        {'text': 'blue', 'score': 10},
        {'text': 'pink', 'score': 3},
        {'text': 'green', 'score': 6}
      ]
    },
    {
      'questionText': 'Whos your favourite cricketer?',
      'answerText': [
        {'text': 'Dhoni', 'score': 9},
        {'text': 'Kohli', 'score': 7},
        {'text': 'ROhit', 'score': 5},
        {'text': 'Ashwin', 'score': 8}
      ]
    }
  ];

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My default app'),
        ),
        body: _questionIndex < questions.length
            ? Quiz(_questionIndex, _answerQuestion, questions)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
