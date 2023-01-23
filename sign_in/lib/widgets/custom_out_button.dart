// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:sign_in/assets/themes/app_text_styles.dart';

class CustomOutButton extends StatelessWidget {
  const CustomOutButton({
    Key? key,
    required this.imagePath,
    required this.buttonText,
  }) : super(key: key);

  final String imagePath;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: null,
        style: OutlinedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            side: const BorderSide(width: 2.0),
            minimumSize: const Size(double.infinity, 52)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 30,
              width: 30,
              child: Image.asset(
                imagePath,
              ),
            ),
            Text(
              buttonText,
              style: AppTextStyles.headline1.copyWith(fontSize: 16),
            )
          ],
        ));
  }
}
