import 'package:flutter/material.dart';
import 'package:homework_ui_110123/app_text_styles.dart';
import 'package:homework_ui_110123/widgets/custom_elev_button.dart';
import 'package:homework_ui_110123/widgets/custom_tf.dart';
import 'package:homework_ui_110123/screens/sign_up_screen.dart';

import 'interface_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
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
                                  builder: (context) =>
                                      const InterfaceScreen()));
                        },
                        child: Image.asset('assets/images/Vector.png'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 70,
            ),
            const Text(
              'Welcome Onboard!',
              style: AppTextStyles.headline,
            ),
            const SizedBox(height: 12),
            const SizedBox(
              height: 75,
              width: 330,
              child: Text(
                'Let’s help you meet up your best tenant or landlord',
                style: AppTextStyles.text,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Log in or sign up',
              style: AppTextStyles.text.copyWith(fontSize: 18),
            ),
            const SizedBox(
              height: 12,
            ),
            const CustomTf(hintText: 'Enter your phone number'),
            const SizedBox(
              height: 25,
            ),
            CustomElevButton(
                buttonText: 'Continue',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpScreen()));
                }),
            const SizedBox(height: 25),
            Center(
              child:
                  Text('or', style: AppTextStyles.text.copyWith(fontSize: 18)),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 84, right: 100),
              child: Row(
                children: [
                  Container(
                    height: 52,
                    width: 56,
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(166, 155, 155, 0.11),
                        shape: BoxShape.circle),
                    child: Image.asset('assets/images/google.png'),
                  ),
                  const Spacer(),
                  Container(
                    height: 52,
                    width: 56,
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(166, 155, 155, 0.11),
                        shape: BoxShape.circle),
                    child: Image.asset('assets/images/three_dots.png'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            const Padding(
              padding: EdgeInsets.only(left: 80, right: 70),
              child: SizedBox(
                height: 72,
                width: 326,
                child: Text(
                  'By continuing, you agree to our Terms of Service Privacy Policy Content Policy',
                  style: AppTextStyles.text,
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
