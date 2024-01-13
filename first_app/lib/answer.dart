import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  final Color color;

  Answer(this.selectHandler, this.answerText, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: color,),
          onPressed: selectHandler,
          child: Text(answerText)),
    );
  }
}
