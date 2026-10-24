import 'package:flutter/material.dart';
import '../widgets/app_logo.dart';
import '../widgets/custom_button.dart';
import 'loading_screen.dart';

class SignInSuccessModal extends StatefulWidget {
  const SignInSuccessModal({super.key});

  @override
  State<SignInSuccessModal> createState() => _SignInSuccessModalState();
}

class _SignInSuccessModalState extends State<SignInSuccessModal> {
  bool dontShowAgain = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppLogo(fontSize: 24, color: Colors.black),
          const SizedBox(height: 20),
          const Text(
            'You have been signed in successfully.',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Checkbox(
                value: dontShowAgain,
                onChanged: (value) {
                  setState(() {
                    dontShowAgain = value ?? false;
                  });
                },
              ),
              const Text("Don't show me again"),
            ],
          ),
          const SizedBox(height: 12),
          CustomButton(
            label: 'Continue',
            width: double.infinity,
            backgroundColor: Colors.black,
            textColor : Colors.white,
            onPressed: () {
              Navigator.pop(context, true);
            },
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}