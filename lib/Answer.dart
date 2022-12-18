// import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback nextquemach;
  String answertext;
  Answer(
    this.nextquemach,
    this.answertext,
  );
//
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 30),
      backgroundColor: Color.fromARGB(255, 128, 248, 16),
      foregroundColor: const Color.fromARGB(255, 0, 0, 0),
      padding: const EdgeInsets.all(10),
      fixedSize: const Size.fromWidth(400),
    );

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ElevatedButton(
            style: style,
            onPressed: nextquemach,
            child: Text(answertext),
          ),
          const SizedBox(
            height: 30,
            // width: 50,
          ),
        ],
      ),
    );
  }
}
