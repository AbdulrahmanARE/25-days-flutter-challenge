import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vortex_app/screens/signin_success.dart';
import '../accounts.dart';
import '../ui_helper.dart';
import '../widgets/custom_button.dart';
import '../widgets/app_logo.dart';
import '../widgets/custom_text_field.dart';


class LoginModalContent extends StatefulWidget {
  const LoginModalContent({super.key});

  @override
  State<LoginModalContent> createState() => _LoginModalContentState();
}

class _LoginModalContentState extends State<LoginModalContent> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Future<void> login(BuildContext context) async {
    String email = emailController.text;
    String password = passwordController.text;

    if (email.contains('@') && email.contains('.')) {
      final user = accounts
          .where(
            (account) =>
        account['email'] == email &&
            account['password'] == password,
      )
          .firstOrNull;

      if (user != null) {
        final result = await showModalBottomSheet<bool>(
          context: context,
          isScrollControlled: true,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(20),
            ),
          ),
          builder: (context) => const FractionallySizedBox(
            heightFactor: 0.90,
            child: SignInSuccessModal(),
          ),
        );

        if (result == true && context.mounted) {
          Navigator.pop(context, true);
        }
      } else {
        UiHelper.showSnackBar(
          context: context,
          message: 'Email or password is incorrect',
        );
      }
    } else {
      UiHelper.showSnackBar(
        context: context,
        message: 'Invalid email format!',
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppLogo(fontSize: 40, color: Colors.black),
            const SizedBox(height: 20),
            Text(
              'Enter your email to join us or sign in.',
              style: GoogleFonts.inter(
                color: Colors.black,
                fontSize: 28,
                height: 1.6,
                letterSpacing: -0.6,
              ),
            ),
            const SizedBox(height: 50),
            CustomTextField(controller: emailController, hintText: 'Email'),
            const SizedBox(height: 16),
            CustomTextField(
              controller: passwordController,
              hintText: 'Password',
              isPassword: true,
            ),
            const SizedBox(height: 30),
            Text.rich(
              TextSpan(
                text: 'By continuing, I agree to\n',
                style: const TextStyle(color: Colors.grey, fontSize: 16),
                children: [
                  const TextSpan(
                    text: 'Privacy Policy',
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                  const TextSpan(text: ' and '),
                  const TextSpan(
                    text: 'Terms of Use',
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                  const TextSpan(text: '.'),
                ],
              ),
            ),
            const SizedBox(height: 30),
            CustomButton(
              label: 'Next',
              width: double.infinity,
              backgroundColor: Colors.black,
              textColor: Colors.white,
              onPressed: () => login(context),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
