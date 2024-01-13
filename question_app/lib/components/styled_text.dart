import 'package:flutter/material.dart';


class StyledText extends StatelessWidget {
  const StyledText(this.text, this.size, {super.key});

  final String text;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: Colors.white,
      ),
    );
  }
}
