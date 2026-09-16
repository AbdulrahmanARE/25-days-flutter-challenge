import 'package:flutter/material.dart';

class FollowButton extends StatelessWidget {
  final VoidCallback onPressed;

  const FollowButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      ),
      icon: const Icon(Icons.add, size: 18),
      label: const Text('Follow', style: TextStyle(fontWeight: FontWeight.w600)),
    );
  }
}