import 'package:flutter/material.dart';
import 'profile_background_image.dart';
import 'profile_info_section.dart';
import 'profile_stats_row.dart';

class ProfileCard extends StatelessWidget {
  final String image;
  final String name;
  final bool isVerified;
  final String bio;
  final int followers;
  final int posts;

  const ProfileCard({
    super.key,
    required this.image,
    required this.name,
    required this.bio,
    required this.followers,
    required this.posts,
    this.isVerified = false,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: SizedBox(
        width: 280,
        height: 479,
        child: Stack(
          children: [
            ProfileBackgroundImage(image: image),
            Positioned(
              left: 20,
              right: 20,
              bottom: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProfileInfoSection(
                      name: name, isVerified: isVerified, bio: bio),
                  const SizedBox(height: 16),
                  ProfileStatsRow(
                    followers: followers,
                    posts: posts,
                    onFollowPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}