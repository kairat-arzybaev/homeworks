import 'package:flutter/material.dart';
import 'package:homework_ui_110123/app_text_styles.dart';
import 'package:homework_ui_110123/screens/register_screen.dart';
import 'package:homework_ui_110123/widgets/custom_elev_button.dart';

class InterfaceScreen extends StatelessWidget {
  const InterfaceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                Image.asset('assets/images/ellipse.png'),
                const Spacer(),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Image.asset('assets/images/image_1.png'),
            SizedBox(
              height: 75,
              width: 375,
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: 'Choose Your',
                    style: AppTextStyles.blueS24W700,
                    children: [
                      TextSpan(
                        text: ' BEST',
                        style: AppTextStyles.blueS24W700.copyWith(
                          color: const Color(0xFFD41A0E),
                        ),
                      ),
                      const TextSpan(
                        text: ' &',
                        style: AppTextStyles.blueS24W700,
                      ),
                      TextSpan(
                        text: ' SMART',
                        style: AppTextStyles.blueS24W700.copyWith(
                          color: const Color(0xFF5043E3),
                        ),
                      ),
                      const TextSpan(
                        text: ' House',
                        style: AppTextStyles.blueS24W700,
                      ),
                    ]),
              ),
            ),
            const Text(
              'I am a',
              style: AppTextStyles.textIamA,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomElevButton(
                buttonText: 'Tenant',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisterScreen()));
                }),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'I am a',
              style: AppTextStyles.textIamA,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomElevButton(
                buttonText: 'Landlord',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisterScreen()));
                })
          ],
        ),
      ),
    );
  }
}
