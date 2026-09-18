import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/app_logo.dart';
import '../widgets/remember_forgot_row.dart';
import '../widgets/signup_prompt.dart';
import '../widgets/auth_scaffold.dart';
import '../widgets/auth_header.dart';
import 'forgot_password_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 24),
          const Center(child: AppLogo()),
          const SizedBox(height: 32),
          const AuthHeader(
            title: 'Sign in to your Account',
            subtitle: 'Enter your email and password to log in',
          ),
          const SizedBox(height: 24),
          const CustomTextField(hintText: 'example@gmail.com'),
          const SizedBox(height: 16),
          const CustomTextField(hintText: 'Password', isPassword: true),
          const SizedBox(height: 12),
          RememberForgotRow(
            onForgotPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ForgotPasswordScreen(),
                ),
              );
            },
          ),
          const SizedBox(height: 8),
          CustomButton(label: 'Log In', onPressed: () {}),
          const SizedBox(height: 20),
          Row(
            children: const [
              Expanded(child: Divider()),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Text('Or'),
              ),
              Expanded(child: Divider()),
            ],
          ),
          const SizedBox(height: 20),
          CustomButton(
            label: 'Continue with Google',
            backgroundColor: Colors.white,
            textColor: Colors.black,
            icon: FontAwesomeIcons.google,
            onPressed: () {},
          ),
          const SizedBox(height: 12),
          CustomButton(
            label: 'Continue with Facebook',
            backgroundColor: Colors.white,
            textColor: Colors.black,
            icon: FontAwesomeIcons.facebook,
            onPressed: () {},
          ),
          const SizedBox(height: 24),
          Center(
            child: SignupPrompt(
              normalText: "Don't have an account? ",
              actionText: 'Sign Up',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Placeholder(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}