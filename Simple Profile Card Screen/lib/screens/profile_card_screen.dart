import 'package:flutter/material.dart';
import '../widgets/profile_card.dart';

class ProfileCardScreen extends StatelessWidget {
  const ProfileCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD8DEDC),
      body: Center(
        child: ProfileCard(
          image: 'assets/images/ProfileCard.jpg',
          name: 'Daniel Reeves',
          isVerified: true,
          bio: 'A Creative Director focused on building unforgettable brand experiences.',
          followers: 312,
          posts: 48,
        ),
      ),
    );
  }
}