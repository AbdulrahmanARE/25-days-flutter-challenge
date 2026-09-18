import 'package:flutter/material.dart';

class RememberForgotRow extends StatelessWidget {
  final VoidCallback onForgotPressed;

  const RememberForgotRow({super.key, required this.onForgotPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(value: false, onChanged: (_) {}),
            const Text('Remember me'),
          ],
        ),
        TextButton(
          onPressed: onForgotPressed,
          style: TextButton.styleFrom(
            foregroundColor: const Color(0xFF4D80E5),
          ),
          child: const Text('Forgot Password ?'),
        ),
      ],
    );
  }
}