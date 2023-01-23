import 'package:flutter/material.dart';
import 'package:sign_in/assets/themes/app_text_styles.dart';
import 'package:sign_in/assets/images/app_image_urls.dart';
import 'package:sign_in/assets/themes/app_colors.dart';

import 'package:sign_in/widgets/custom_chip.dart';

import '../assets/models/car.dart';
import '../widgets/build_car.dart';

class CarsPage extends StatefulWidget {
  const CarsPage({super.key});

  @override
  State<CarsPage> createState() => _CarsPageState();
}

class _CarsPageState extends State<CarsPage> {
  List<Car> cars = [
    Car(
        imageUrl: AppImageUrls.toyota,
        model: 'TOYOTA',
        price: 300,
        transmission: 'Automatic',
        speed: 200,
        owner: 'Mirbek'),
    Car(
        imageUrl: AppImageUrls.lamba,
        model: 'LAMBORGHINI',
        price: 550,
        transmission: 'Automatic',
        speed: 300,
        owner: 'Erbol'),
    Car(
        imageUrl: AppImageUrls.range,
        model: 'RANGE ROVER',
        price: 150,
        transmission: 'Automatic',
        speed: 220,
        owner: 'Mirlan'),
    Car(
        imageUrl: AppImageUrls.tesla,
        model: 'TESLA',
        price: 150,
        transmission: 'Automatic',
        speed: 200,
        owner: 'Nurlan'),
    Car(
        imageUrl: AppImageUrls.moskvich,
        model: 'MOSKVICH',
        price: 50,
        transmission: 'Manual',
        speed: 140,
        owner: 'Aybek'),
    Car(
        imageUrl: AppImageUrls.zhiguli,
        model: 'ZHIGULI',
        price: 70,
        transmission: 'Manual',
        speed: 160,
        owner: 'Nurbek'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bg,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    color: AppColors.darkBlue,
                    iconSize: 40,
                    onPressed: () {},
                    icon: const Icon(Icons.menu),
                  ),
                  const Spacer(),
                  IconButton(
                    color: AppColors.darkBlue,
                    iconSize: 40,
                    onPressed: () {},
                    icon: const Icon(Icons.shopping_cart_outlined),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Image.asset(AppImageUrls.banner),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: const [
                  CustomChip(),
                  IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.search,
                        color: AppColors.black,
                      )),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                'Cars Available Near You',
                style: AppTextStyles.headline1.copyWith(fontSize: 20),
              ),
              Row(
                children: [
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'View more',
                    ),
                  ),
                ],
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: cars.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      crossAxisCount: 2),
                  itemBuilder: ((context, index) {
                    var car = cars[index];
                    return BuildCar(
                      car: car,
                    );
                  }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
