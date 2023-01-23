// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:sign_in/assets/themes/app_text_styles.dart';

class CustomElevButton extends StatelessWidget {
  const CustomElevButton({
    Key? key,
    required this.elevButtonText,
    this.onPressed,
  }) : super(key: key);
  final String elevButtonText;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 52),
          backgroundColor: const Color(0xFF2B4C59),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      child: Text(
        elevButtonText,
        style: AppTextStyles.elevButtonText,
      ),
    );
  }
}
