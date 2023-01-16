import 'package:flutter/cupertino.dart';

abstract class AppTextStyles {
  static TextStyle title = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Color(0xFF000000),
  );

  static TextStyle subtitle = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Color(0xFF000000),
  );

  static TextStyle countMonths = const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: Color(0xFF000000),
  );
}
