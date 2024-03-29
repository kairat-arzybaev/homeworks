import 'package:flutter/material.dart';
import 'package:sign_in/assets/images/app_image_urls.dart';
import 'package:sign_in/assets/themes/app_text_styles.dart';
import 'package:sign_in/screens/cars_page.dart';
import 'package:sign_in/screens/sign_up_page.dart';
import 'package:sign_in/widgets/custom_elev_button.dart';
import 'package:sign_in/widgets/custom_out_button.dart';
import 'package:sign_in/widgets/custom_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                'Sign In',
                style: AppTextStyles.headline1,
              ),
              const SizedBox(
                height: 70,
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
              TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot password?',
                  style: AppTextStyles.textS11W400,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomElevButton(
                elevButtonText: 'Log In',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CarsPage()));
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
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Don’t Have an account yet?',
                    style: AppTextStyles.textS15W300,
                  ),
                  TextButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpPage())),
                    child: Text(
                      'SIGN UP',
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
