import 'package:flutter/material.dart';
import 'follow_button.dart';

class ProfileStatsRow extends StatelessWidget {
  final int followers;
  final int posts;
  final VoidCallback onFollowPressed;

  const ProfileStatsRow({
    super.key,
    required this.followers,
    required this.posts,
    required this.onFollowPressed,
  });

  Widget _statItem(IconData icon, int value) {
    return Row(
      children: [
        Icon(icon, color: Colors.white, size: 16),
        const SizedBox(width: 4),
        Text('$value', style: const TextStyle(color: Colors.white, fontSize: 14)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            _statItem(Icons.people_outline, followers),
            const SizedBox(width: 16),
            _statItem(Icons.grid_view_outlined, posts),
          ],
        ),
        FollowButton(onPressed: onFollowPressed),
      ],
    );
  }
}