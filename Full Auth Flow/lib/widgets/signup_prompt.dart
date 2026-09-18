import 'package:flutter/material.dart';

class SignupPrompt extends StatelessWidget {
  final String normalText;
  final String actionText;
  final VoidCallback onPressed;

  const SignupPrompt({
    super.key,
    required this.normalText,
    required this.actionText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(normalText),
          TextButton(
            onPressed: onPressed,
            style: TextButton.styleFrom(
              foregroundColor: const Color(0xFF4D80E5),
            ),
            child: Text(actionText),
          ),
        ],
      ),
    );
  }
}