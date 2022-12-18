// import 'package:flutter/src/widgets/container.dart';
// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import './Answer.dart';
import './Question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final queIndex;
  final answerQuestion;
  const Quiz(
      {super.key,
      required this.question,
      required this.queIndex,
      required this.answerQuestion});
  // const Quiz({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      // Text(queIndex.toString()),
      // Text(question.length.toString()),
      Question(question[queIndex]['0'] as String),
      ...(question[queIndex]['1'] as List<Map<String, Object>>).map((answer) {
        return Answer(
            () => answerQuestion(answer['verify']), answer['10'] as String);
      }).toList(),

      // Answer(answerQuestion),
      // Answer(answerQuestion),
    ]);
  }
}
