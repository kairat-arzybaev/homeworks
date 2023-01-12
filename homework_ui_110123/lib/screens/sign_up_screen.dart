import 'package:flutter/material.dart';
import 'package:homework_ui_110123/app_text_styles.dart';
import 'package:homework_ui_110123/screens/register_screen.dart';
import 'package:homework_ui_110123/widgets/custom_elev_button.dart';
import 'package:homework_ui_110123/widgets/custom_tf.dart';

import 'interface_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Stack(
                children: [
                  Image.asset('assets/images/ellipse.png'),
                  Positioned(
                    left: 24,
                    top: 53,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const InterfaceScreen()));
                      },
                      child: Image.asset('assets/images/Vector.png'),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 30),
          const SizedBox(height: 60),
          const Text(
            'SIGN UP',
            style: AppTextStyles.headline,
          ),
          const SizedBox(height: 40),
          const Text('Just entry your personal details',
              style: AppTextStyles.text),
          const SizedBox(height: 40),
          const CustomTf(hintText: 'Enter your full name'),
          const SizedBox(height: 30),
          const CustomTf(hintText: 'Enter your e-mail'),
          const SizedBox(height: 30),
          const CustomTf(hintText: 'Enter your password'),
          const SizedBox(height: 30),
          const CustomTf(hintText: 'Confirm your password'),
          const SizedBox(height: 40),
          CustomElevButton(buttonText: 'Continue', onPressed: () {}),
        ],
      ),
    ));
  }
}
