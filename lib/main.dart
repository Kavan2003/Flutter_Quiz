// import 'dart:io';

import 'package:flutter/material.dart';
// import 'dart:convert';
// import './Question.dart';
// import './Answer.dart';
import './quiz.dart';
import './result.dart';

class _MyApp extends StatefulWidget {
  @override
  State<_MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<_MyApp> {
  static const question = [
    {
      '0': 'Grand Central Terminal, Park Avenue, New York is the world\'s',
      '1': [
        {'10': 'largest railway station', 'verify': true},
        {'10': 'highest railway station', 'verify': false},
        {'10': 'longest railway station', 'verify': false},
        {'10': 'None of the above', 'verify': false},
      ]
    },
    {
      '0': '	Entomology is the science that studies',
      '1': [
        {'10': 'Behavior of human beings', 'verify': false},
        {'10': 'Insects', 'verify': true},
        {
          '10': 'The origin and history of technical and scientific terms',
          'verify': false
        },
        {'10': 'The formation of rocks', 'verify': false},
      ]
    },
    {
      '0':
          '	Eritrea, which became the 182nd member of the UN in 1993, is in the continent of',
      '1': [
        {'10': 'Asia', 'verify': false},
        {'10': 'Africa', 'verify': true},
        {'10': 'Europe', 'verify': false},
        {'10': 'Australia', 'verify': false},
      ]
    },
    {
      '0': '	Garampani sanctuary is located at',
      '1': [
        {'10': 'Junagarh, Gujarat', 'verify': false},
        {'10': 'Diphu, Assam', 'verify': true},
        {'10': 'Kohima, Nagaland', 'verify': false},
        {'10': 'Gangtok, Sikkim', 'verify': false},
      ]
    },
  ];

  var queIndex = 0;
  var totalScores = 0;
  void reset() {
    setState(() {
      queIndex = 0;
      totalScores = 0;
    });
  }

  void answerQuestion(bool verify) {
    if (verify == true) {
      totalScores += 1;
    }

    setState(() {
      if (queIndex != (question.length)) {
        print(queIndex);
        print(question.length);
        queIndex = queIndex + 1;
      }
      // else {
      //   print('else executed');
      //   queIndex = 0;
      // }
    });

    // print(queIndex);
  }

  // String questioner=;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Quiz App '),
              centerTitle: true,
              backgroundColor: const Color.fromARGB(255, 123, 255, 0),
            ),
            body: queIndex < (question.length)
                ? Quiz(
                    question: question,
                    queIndex: queIndex,
                    answerQuestion: answerQuestion)
                : Result(totalScores, reset)));
  }
}

void main() => runApp(_MyApp());
// {
//   runApp(MyApp());
// }
