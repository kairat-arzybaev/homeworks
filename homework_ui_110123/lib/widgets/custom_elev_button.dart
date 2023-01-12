// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:homework_ui_110123/app_text_styles.dart';

class CustomElevButton extends StatelessWidget {
  const CustomElevButton({
    Key? key,
    required this.buttonText,
    this.onPressed,
  }) : super(key: key);

  final String buttonText;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35.0),
        child: SizedBox(
          height: 48,
          width: double.infinity,
          child: ElevatedButton(
              onPressed: onPressed,
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0)),
                ),
              ),
              child: Text(
                buttonText,
                style: AppTextStyles.buttonText,
              )),
        ),
      )
    ]);
  }
}
