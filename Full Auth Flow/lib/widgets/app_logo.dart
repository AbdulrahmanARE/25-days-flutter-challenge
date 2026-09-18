import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return  Image.asset(
      'assets/images/Vector.png',
      width: 80,
      height: 80,
    );
  }
}