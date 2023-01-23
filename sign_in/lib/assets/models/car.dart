// ignore_for_file: public_member_api_docs, sort_constructors_first
class Car {
  Car({
    required this.imageUrl,
    required this.model,
    required this.price,
    required this.transmission,
    required this.speed,
    required this.owner,
  });

  final String imageUrl;
  final String model;
  final int price;
  final String transmission;
  final int speed;
  final String owner;
}
