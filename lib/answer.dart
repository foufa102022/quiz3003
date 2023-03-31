import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  VoidCallback answerfunction;

  Answer(this.answerfunction);

  @override
  Widget build (BuildContext context) {
    return ElevatedButton(
      onPressed: answerfunction,
       child: Text(
        'Reponse 1',
        style : const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        )

       ));
  }
}
