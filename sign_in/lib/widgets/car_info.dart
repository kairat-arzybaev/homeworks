// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:sign_in/assets/themes/app_colors.dart';
import 'package:sign_in/assets/themes/app_text_styles.dart';

import '../assets/models/car.dart';

class CarInfo extends StatelessWidget {
  const CarInfo({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 160,
      decoration: BoxDecoration(color: AppColors.cardBg, boxShadow: [
        BoxShadow(
          blurRadius: 4,
          offset: const Offset(4, 0),
          color: const Color(0xFF000000).withOpacity(0.25),
        )
      ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            title,
            style: AppTextStyles.textS13W700.copyWith(
                color: AppColors.lightBlue, fontStyle: FontStyle.normal),
          ),
          Text(
            subtitle,
            style: AppTextStyles.textS11W400,
          ),
        ],
      ),
    );
  }
}
