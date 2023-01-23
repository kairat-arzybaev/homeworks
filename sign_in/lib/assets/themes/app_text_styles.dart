import 'package:flutter/material.dart';

abstract class AppTextStyles {
  static TextStyle headline1 = const TextStyle(
    fontSize: 48,
    fontWeight: FontWeight.w400,
    color: Color(0xFF000000),
    fontFamily: 'Imprima',
  );

  static TextStyle elevButtonText = const TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w700,
    color: Color(0xFFFFFFFF),
    fontFamily: 'Inter',
  );

  static TextStyle textS16W400 = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: Color(0xFF2B4C59),
    fontFamily: 'Roboto',
  );

  static TextStyle textS15W300 = const TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w300,
    color: Color(0xFF000000),
    fontFamily: 'Inter',
  );

  static TextStyle textS11W400 = const TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w400,
    color: Color(0xFF000000),
    fontFamily: 'Inter',
  );

  static TextStyle textS13W700 = const TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w700,
      color: Color(0xFFFCC21B),
      fontFamily: 'Inter',
      fontStyle: FontStyle.italic);

  static TextStyle tiira = const TextStyle(
    fontSize: 50,
    fontWeight: FontWeight.w400,
    color: Color(0xFFFFFFFF),
    fontFamily: 'Iceberg',
  );

  static TextStyle homepageText = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w600,
    color: const Color(0xFFF6F6F6).withOpacity(0.81),
    fontFamily: 'Hind',
  );
}
