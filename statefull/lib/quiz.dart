import 'package:flutter/material.dart';
import './answers.dart';
import './question.dart';
class  Quiz extends StatelessWidget {
  final List<Map<String,Object>> questions;
  final Function answerQuestions;
  final int quesIndex;

  Quiz({
    required this.questions,
    required this.answerQuestions,
    required this.quesIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[quesIndex]["questionText"] as String),
        ...(questions[quesIndex]['answers'] as List<Map<String,Object>>).map((answer) {
          return Answer(
              () => answerQuestions(answer['score']) ,answer['text'] as String
          );
        }).toList(),
        // Answer(_answerQuestion),
        // Answer(_answerQuestion),
        // Answer(_answerQuestion),

      ],
    );

  }
}
