import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

// void main() {
//    runApp(
//        RootWidget()
//    );
// }

void main() => runApp(RootWidget());

class RootWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RootWidgetState();
  }
}

class _RootWidgetState extends State<RootWidget> {
  var _quesIndex = 0;
  var _total_score = 0;
  void _answerQuestion(int score) {
    _total_score += score;
    setState(() {
      _quesIndex += 1 ;
    });
    print("button pressed!!!");
  }
  void resetQuiz() {
    setState(() {
      _quesIndex = 0;
      _total_score = 0;
    });
  }
  @override
  Widget build(BuildContext context) {
    const _questions = [
      {'questionText':'What\'s your favourite color', 'answers':[
        {'text':'Black','score':3},
        {'text':'Blue','score':5},
        {'text':'Pink','score':6},
    ]},
      {'questionText':'what\'s your favourite animal', 'answers':[
        {'text':'Rabbit','score':3},
        {'text':'Snake','score':9},
        {'text':'Lion','score':7},
      ]
      },
      {'questionText':'what\'s your favourite module', 'answers':[
        {'text':'test','score':12},
        {'text':'assignment','score':5},
        {'text':'practice','score':3},
      ]},
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Application'),
        ),
        body: _quesIndex < _questions.length ?
        Quiz(answerQuestions: _answerQuestion,quesIndex: _quesIndex,questions: _questions,) :
        Result(totalScore: _total_score,restartQuiz: resetQuiz,),
      ),
    );
  }
}


