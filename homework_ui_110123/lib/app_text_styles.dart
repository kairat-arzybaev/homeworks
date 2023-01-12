import 'package:flutter/material.dart';

abstract class AppTextStyles {
  static const TextStyle buttonText = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w800,
    fontFamily: 'Poppins',
    color: Color(0xFFFFFFFF),
  );

  static const TextStyle text = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    fontFamily: 'Poppins',
    color: Color(0xFF000000),
  );

  static const TextStyle headline = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w500,
    fontFamily: 'Poppins',
    color: Color(0xFF000000),
  );

  static const TextStyle blueS24W700 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    fontFamily: 'Poppins',
    color: Color(0xFF0E99D4),
  );

  static const TextStyle textIamA = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    fontFamily: 'Poppins',
    color: Color(0xFF000000),
  );

  static const TextStyle hintText = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    fontFamily: 'Poppins',
    color: Color(0xFF000000),
  );
}
