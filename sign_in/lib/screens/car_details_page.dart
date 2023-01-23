import 'package:flutter/material.dart';

import 'package:sign_in/assets/models/car.dart';
import 'package:sign_in/assets/themes/app_colors.dart';
import 'package:sign_in/assets/themes/app_text_styles.dart';
import 'package:sign_in/widgets/car_info.dart';

class CarDetailsPage extends StatelessWidget {
  final Car car;
  const CarDetailsPage({
    Key? key,
    required this.car,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          height: 400,
          decoration: const BoxDecoration(
              color: AppColors.lightBlue,
              borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(45), right: Radius.circular(45))),
          child: Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          color: AppColors.bg,
                          size: 30,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_vert,
                          color: AppColors.bg,
                          size: 30,
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              Stack(children: [
                Positioned(
                  top: -20,
                  left: 3,
                  child: Text('TIIRA',
                      style: TextStyle(
                          color: AppColors.bg.withOpacity(0.3), fontSize: 120)),
                ),
                SizedBox(
                  height: 200,
                  child: Image.asset(
                    car.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ])
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    car.model,
                    style: AppTextStyles.textS16W400,
                  ),
                  Text(
                    '\$${car.price.toString()}',
                    style: AppTextStyles.textS13W700.copyWith(
                        color: AppColors.red, fontStyle: FontStyle.normal),
                  )
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: SizedBox(
            height: 100,
            child: ListView(scrollDirection: Axis.horizontal, children: [
              CarInfo(title: 'Transmission', subtitle: car.transmission),
              const SizedBox(
                width: 15,
              ),
              CarInfo(title: 'Speed', subtitle: '${car.speed.toString()} km/h'),
              const SizedBox(
                width: 15,
              ),
              CarInfo(title: 'Speed', subtitle: '${car.speed.toString()} km/h'),
            ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'RENDER',
                  style: AppTextStyles.textS15W300,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  const CircleAvatar(),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(car.owner),
                  const Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.message_rounded)),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.call_outlined))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add_circle_outline_rounded,
                      size: 40,
                      color: AppColors.lightBlue,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    '1',
                    style: AppTextStyles.elevButtonText
                        .copyWith(color: AppColors.black, fontSize: 18),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.remove_circle_outline_rounded,
                      size: 40,
                      color: AppColors.lightBlue,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ]),
    );
  }
}
