import 'package:flutter/material.dart';



class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style:  ButtonStyle(foregroundColor: MaterialStateProperty.all(Colors.red),
            backgroundColor: MaterialStateProperty.all(Colors.lightGreen)),
        onPressed: selectHandler,
        child: Text(answerText),
      ),
    );
  }
}
