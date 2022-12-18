import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// import 'https://fonts.google.com/specimen/Roboto+Slab';
class Question extends StatelessWidget {
  // @override
  final String questiontext;

  Question(this.questiontext);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(40),
      child: Text(
        questiontext,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 25,
          // backgroundColor: Color.fromARGB(255, 8, 8, 6),
          color: Color.fromARGB(255, 0, 0, 0),
        ),
      ),
    );
  }
}
