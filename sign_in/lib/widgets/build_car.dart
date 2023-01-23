import 'package:flutter/material.dart';

import '../assets/models/car.dart';
import '../assets/themes/app_colors.dart';
import '../assets/themes/app_text_styles.dart';
import '../screens/car_details_page.dart';

class BuildCar extends StatelessWidget {
  const BuildCar({
    Key? key,
    required this.car,
  }) : super(key: key);

  final Car car;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => CarDetailsPage(car: car)));
      },
      child: Container(
          height: 200,
          decoration: BoxDecoration(
              color: AppColors.bg,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: 4,
                    offset: const Offset(0, 4))
              ]),
          child: Column(
            children: [
              Image.asset(
                car.imageUrl,
                height: 90,
              ),
              Text(
                car.model,
                style: AppTextStyles.textS11W400
                    .copyWith(color: AppColors.darkBlue),
              ),
              Text('${car.price.toString()}/day'),
              Row(
                children: [
                  const Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_outline,
                        color: AppColors.red,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_circle_right,
                        color: AppColors.darkBlue,
                      ))
                ],
              )
            ],
          )),
    );
  }
}
