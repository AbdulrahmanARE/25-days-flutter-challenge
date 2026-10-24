import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppLogo extends StatelessWidget {
  final double fontSize;
  final Color color;

  const AppLogo({
    super.key,
    this.fontSize = 32,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Vortex',
      style: GoogleFonts.montserrat(
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        letterSpacing: 1.5,
        color: color,
      ),
    );
  }
}
