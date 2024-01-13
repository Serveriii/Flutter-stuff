import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questiontext;

  Question(this.questiontext);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
        color: Color.fromARGB(255, 47, 156, 245),
        child: Text(
          questiontext,
          style: TextStyle(fontSize: 28),
          textAlign: TextAlign.center,
        ));
  }
}
