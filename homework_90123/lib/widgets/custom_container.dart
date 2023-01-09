// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    Key? key,
    required this.icon,
    required this.title,
    required this.sizedBox,
    required this.subtitle,
  }) : super(key: key);

  final String title;
  final Icon icon;
  final Widget sizedBox;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
      child: Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        height: 48,
        width: 315,
        decoration: BoxDecoration(
            color: const Color(0xFFFFFFFF),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            icon,
            const SizedBox(
              width: 18,
            ),
            Text(
              title,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins',
                  color: Color(0xFF000000)),
            ),
            sizedBox,
            Text(
              subtitle,
              style: const TextStyle(
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  color: Color(0xFF898A8D),
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
