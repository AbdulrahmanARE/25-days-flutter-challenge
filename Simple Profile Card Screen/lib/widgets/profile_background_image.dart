import 'package:flutter/material.dart';

class ProfileBackgroundImage extends StatelessWidget {
  final String image;

  const ProfileBackgroundImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(image, fit: BoxFit.cover),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.transparent,
                Colors.black.withOpacity(0.4),
                Colors.black.withOpacity(0.95),
              ],
              stops: const [0.35, 0.7, 1.0],
            ),
          ),
        ),
      ],
    );
  }
}