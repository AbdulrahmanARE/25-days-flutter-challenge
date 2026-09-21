import 'package:flutter/material.dart';

class ProfileInfoSection extends StatelessWidget {
  final String name;
  final bool isVerified;
  final String bio;

  const ProfileInfoSection({
    super.key,
    required this.name,
    required this.bio,
    this.isVerified = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (isVerified) ...[
              const SizedBox(width: 6),
              const Icon(Icons.verified, color: Colors.white, size: 18),
            ],
          ],
        ),
        const SizedBox(height: 6),
        Text(
          bio,
          style: TextStyle(color: Colors.white.withOpacity(0.85), fontSize: 14),
        ),
      ],
    );
  }
}