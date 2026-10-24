import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/background_image.dart';
import '../widgets/custom_button.dart';
import '../widgets/app_logo.dart';

//import 'signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: BackgroundImageWithGradient(
              image: 'assets/images/welcome_bg.jpg',
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppLogo(fontSize: 32, color: Colors.white),
                  const SizedBox(height: 16),
                  Text(
                    'Vortex App\nBringing Vortex Members the best products, inspiration and stories in sport.',
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 20,
                      height: 1.6,
                      letterSpacing: -0.6,
                    ),
                  ),
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      Expanded(
                        child: CustomButton(
                          label: 'Join Us',
                          onPressed: () async {
                            final result = await showModalBottomSheet<bool>(
                              context: context,
                              isScrollControlled: true,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20),
                                ),
                              ),
                              builder: (context) => FractionallySizedBox(
                                heightFactor: 0.90,
                                child: Scaffold(
                                  backgroundColor: Colors.transparent,
                                  body: Placeholder(),
                                ),
                              ),
                            );

                            if (result == true && context.mounted) {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Placeholder(),
                                ),
                                    (route) => false,
                              );
                            }
                          },
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: CustomButton(
                          label: 'Sign In',
                          isOutlined: true,
                          textColor: Colors.white,
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20),
                                ),
                              ),
                              builder: (context) => FractionallySizedBox(
                                heightFactor: 0.90,
                                child: Placeholder(),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 60),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
