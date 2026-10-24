import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../accounts.dart';
import '../ui_helper.dart';
import '../widgets/custom_button.dart';
import '../widgets/app_logo.dart';
import '../widgets/custom_text_field.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final firstNameController = TextEditingController();
  final surnameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final rePasswordController = TextEditingController();

  @override
  void dispose() {
    firstNameController.dispose();
    surnameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    rePasswordController.dispose();
    super.dispose();
  }

  void registerAccount(BuildContext context) {
    String firstName = firstNameController.text;
    String surname = surnameController.text;
    String email = emailController.text;
    String password = passwordController.text;
    String rePassword = rePasswordController.text;

    if (email.contains('@') && email.contains('.')) {
      final exists = accounts.any((account) => account['email'] == email);
      if (!exists) {
        if (password == rePassword) {
          accounts.add({
            'email': email,
            'password': password,
            'name': '$firstName $surname',
          });
          UiHelper.showSnackBar(
            context: context,
            message: 'Email registered successfully',
          );
          Navigator.pop(context);
        } else {
          UiHelper.showSnackBar(
            context: context,
            message: "Password doesn't match",
          );
        }
      } else {
        UiHelper.showSnackBar(
          context: context,
          message: 'Email address already exists',
        );
      }
    } else {
      UiHelper.showSnackBar(context: context, message: 'Invalid email format!');
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
              'Now let’s make you a Vortex Member.',
              style: GoogleFonts.inter(
                color: Colors.black,
                fontSize: 28,
                height: 1.6,
                letterSpacing: -0.6,
              ),
            ),
            const SizedBox(height: 50),
            Row(
              children: [
                Expanded(
                  child: CustomTextField(
                    controller: firstNameController,
                    hintText: 'First name',
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: CustomTextField(
                    controller: surnameController,
                    hintText: 'Surname',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            CustomTextField(controller: emailController, hintText: 'Email'),
            const SizedBox(height: 16),
            CustomTextField(
              controller: passwordController,
              hintText: 'Password',
              isPassword: true,
            ),
            const SizedBox(height: 16),
            CustomTextField(
              controller: rePasswordController,
              hintText: 'Re enter Password',
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
              onPressed: () => registerAccount(context),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
