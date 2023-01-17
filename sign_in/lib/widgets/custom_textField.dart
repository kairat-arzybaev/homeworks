import 'package:flutter/material.dart';

import '../app_text_styles.dart';

class CustomTextField extends StatefulWidget {
  final String title;

  final String? hintText;

  final bool obscureText;
  final Widget? suffixIcon;

  const CustomTextField(
      {Key? key,
      required this.title,
      this.hintText,
      this.obscureText = true,
      this.suffixIcon})
      : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextField();
}

class _CustomTextField extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        widget.title,
        style: AppTextStyles.textS16W400,
      ),
      TextField(
        obscureText: widget.obscureText,
        decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: AppTextStyles.textS16W400,
            border: const UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFE5E5E5)),
            ),
            suffixIcon: widget.suffixIcon),
      )
    ]);
  }
}
