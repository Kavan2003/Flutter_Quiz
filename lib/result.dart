import 'package:flutter/material.dart';
import './main.dart';

class Result extends StatelessWidget {
//  ignore: prefer_typing_uninitialized_variables
  var scores = 0;
  final VoidCallback reset;

  Result(this.scores, this.reset);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 30),
      backgroundColor: const Color.fromARGB(255, 13, 252, 0),
      foregroundColor: const Color.fromARGB(255, 0, 0, 0),
      padding: const EdgeInsets.all(10),
      fixedSize: const Size.fromWidth(400),
    );
    // ignore: prefer_const_literals_to_create_immutables
    return Column(children: <Widget>[
      SizedBox(
        width: 400.0,
        height: 200.0,
        child: Center(
          //  Text('End of Quiz 'style: size,),
          child: Column(
            children: <Widget>[
              Text(
                '\n\n\n\n\nYOUR TOTAL MARKS:' + scores.toString(),
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ],
          ),
        ),
      ),
      ElevatedButton(
        style: style,
        onPressed: reset,
        child: Text('Reset Quiz'),
      ),
    ]);
  }
}
