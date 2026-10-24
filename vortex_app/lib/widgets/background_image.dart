import 'package:flutter/material.dart';

class BackgroundImageWithGradient extends StatelessWidget {

  final String image;
  final double gradientStart;
  final double gradientMidOpacity;
  final double gradientEndOpacity;

  const BackgroundImageWithGradient({
    super.key,
    required this.image,
    this.gradientStart = 0.35,
    this.gradientMidOpacity = 0.4,
    this.gradientEndOpacity = 0.95,
  });

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
                Colors.black.withValues(alpha: 0.4),
                Colors.black.withValues(alpha: 0.9),
              ],
              stops: [gradientStart, (gradientStart + 1.0) / 2, 1.0],
            ),
          ),
        ),
      ],
    );
  }
}