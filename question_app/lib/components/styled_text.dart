import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, this.size, this.font, {super.key});

  final String text;
  final double size;
  final String font;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: GoogleFonts.getFont(font,
          textStyle: TextStyle(
              color: Colors.white,
              fontSize: size,
              fontWeight: FontWeight.bold)),
    );
  }
}
