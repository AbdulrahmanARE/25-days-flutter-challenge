import 'package:flutter/material.dart';
import '../widgets/auth_header.dart';
import '../widgets/auth_scaffold.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/app_logo.dart';
import '../widgets/signup_prompt.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

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
            title: 'Forgot Password?',
            subtitle: 'Enter your email to reset your password',
          ),
          const SizedBox(height: 24),
          const CustomTextField(hintText: 'example@gmail.com'),
          const SizedBox(height: 20),
          CustomButton(label: 'Reset Password', onPressed: () {}),
          const SizedBox(height: 24),
          Center(
            child: SignupPrompt(
              normalText: "Remember your password? ",
              actionText: 'Log In',
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
