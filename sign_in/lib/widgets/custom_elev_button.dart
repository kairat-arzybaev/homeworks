// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:sign_in/app_text_styles.dart';

class CustomElevButton extends StatelessWidget {
  const CustomElevButton({
    Key? key,
    required this.elevButtonText,
  }) : super(key: key);
  final String elevButtonText;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 52),
        backgroundColor: const Color(0xFF2B4C59),
      ),
      child: Text(
        elevButtonText,
        style: AppTextStyles.elevButtonText,
      ),
    );
  }
}
