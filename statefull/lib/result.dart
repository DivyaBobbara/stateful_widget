import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback restartQuiz;

  String get resultPhrase {
    var resultText = 'You did it!!';
    print("$totalScore,totalllscore");
    if (totalScore <= 8) {
      resultText = "You are awesome!!";
    } else if(totalScore <= 12) {
      resultText = "Pretty likablee";
    } else if(totalScore <= 18) {
      resultText = "You are ... strange!!";
    } else {
      resultText = "You are so bad";
    }
    return resultText;
  }


  Result({required this.totalScore,required this.restartQuiz});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),
          ),
          // TextButton(onPressed: restartQuiz, child: Text("RestartQuiz"),style: ButtonStyle(foregroundColor: MaterialStateProperty.all(Colors.pinkAccent))),
          OutlinedButton(onPressed: restartQuiz, child: Text("restart"),style: ButtonStyle(foregroundColor: MaterialStateProperty.all(Colors.white),backgroundColor: MaterialStateProperty.all(Colors.orange)),),
          ElevatedButton(onPressed: restartQuiz, child: Text("restart"),style:ButtonStyle(foregroundColor: MaterialStateProperty.all(Colors.white),backgroundColor: MaterialStateProperty.all(Colors.orange))),
          ElevatedButton(onPressed: restartQuiz, child: Text("restart"),style: ElevatedButton.styleFrom(primary: Colors.red,onPrimary: Colors.blue),),
          OutlinedButton(onPressed: restartQuiz, child: Text("restart"),style: OutlinedButton.styleFrom(primary: Colors.red,side: BorderSide(color: Colors.blue),) ,)


        ],
      ),
    );
  }
}
