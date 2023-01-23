import 'package:flutter/material.dart';
import 'package:sign_in/assets/images/app_image_urls.dart';
import 'package:sign_in/assets/themes/app_text_styles.dart';
import 'package:sign_in/widgets/custom_elev_button.dart';
import 'package:sign_in/widgets/custom_out_button.dart';
import 'package:sign_in/widgets/custom_textfield.dart';

import 'login_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 100,
              ),
              Text(
                'Sign Up',
                style: AppTextStyles.headline1,
              ),
              const SizedBox(
                height: 60,
              ),
              const CustomTextField(
                title: 'FULL NAME',
                hintText: 'Lorem Ipsum',
              ),
              const SizedBox(
                height: 30,
              ),
              const CustomTextField(
                obscureText: false,
                title: 'EMAIL OR PHONE',
                hintText: 'Loremipsum@gmail.com',
              ),
              const SizedBox(
                height: 32,
              ),
              CustomTextField(
                title: 'PASSWORD',
                obscureText: _isObscure,
                suffixIcon: IconButton(
                    icon: _isObscure
                        ? const Icon(Icons.visibility_off_sharp)
                        : const Icon(Icons.visibility_sharp),
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    }),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomElevButton(
                elevButtonText: 'Sign Up',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()));
                },
              ),
              const SizedBox(
                height: 16,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'OR',
                  style: AppTextStyles.textS16W400
                      .copyWith(fontWeight: FontWeight.w300),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const CustomOutButton(
                  imagePath: AppImageUrls.google,
                  buttonText: 'Continue With Google'),
              const SizedBox(
                height: 20,
              ),
              const CustomOutButton(
                  imagePath: AppImageUrls.facebook,
                  buttonText: 'Continue With Facebook'),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Have an account already?',
                    style: AppTextStyles.textS15W300,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()),
                      );
                    },
                    child: Text(
                      'SIGN IN',
                      style: AppTextStyles.textS13W700,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
