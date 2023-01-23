import 'package:flutter/material.dart';
import 'package:sign_in/assets/images/app_image_urls.dart';
import 'package:sign_in/assets/themes/app_colors.dart';
import 'package:sign_in/assets/themes/app_text_styles.dart';
import 'package:sign_in/screens/login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Image.asset(AppImageUrls.carFullScreen,
            width: double.infinity, fit: BoxFit.cover),
        Positioned(
          top: 242,
          left: 136,
          child: RichText(
            text: TextSpan(text: 'T', style: AppTextStyles.tiira, children: [
              TextSpan(
                  text: 'II',
                  style:
                      AppTextStyles.tiira.copyWith(color: AppColors.darkBlue)),
              TextSpan(text: 'RA', style: AppTextStyles.tiira),
            ]),
          ),
        ),
        Positioned(
          top: 550,
          left: 26,
          child: Text(
            'Rent your dream car from the \nBest Company',
            style: AppTextStyles.homepageText,
            textAlign: TextAlign.center,
          ),
        ),
        Positioned(
          top: 700,
          left: 80,
          child: SizedBox(
            height: 60,
            width: 250,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LoginPage()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.red,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
              ),
              child: Text(
                'Get Started >',
                style: AppTextStyles.elevButtonText,
              ),
            ),
          ),
        )
      ]),
    );
  }
}
