import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetHandler;

  Result(this.totalScore, this.resetHandler);
  String get resultPhrase {
    if (totalScore < 8) {
      return 'You are strong!';
    } else if (totalScore < 15) {
      return 'You are decently stronger!';
    } else {
      return 'You are timid!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetHandler,
            child: Text('Reset Quiz'),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
