// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:class_praktika_2/class_praktika_2.dart' as class_praktika_2;

void main(List<String> arguments) {
  // TASK 1 TEST
  print('------------TASK 1---------------------');
  Vehicle vehicle1 = Vehicle(maxSpeed: 200, mileAge: 42433, seatingCapacity: 5);
  print(
      'This scooter\'s maximum speed is ${vehicle1.maxSpeed}, mile age is ${vehicle1.mileAge}, seating capacity is ${vehicle1.seatingCapacity} and color is ${vehicle1.color}.');

  // TASK 2 TEST
  print('------------TASK 2---------------------');
  Scooter scooter1 = Scooter(maxSpeed: 40, mileAge: 754335, seatingCapacity: 2);
  print(
      'This scooter\'s maximum speed is ${scooter1.maxSpeed}, mile age is ${scooter1.mileAge}, seating capacity is ${scooter1.seatingCapacity} and color is ${scooter1.color}.');

  // TASK 3 TEST
  print('------------TASK 3---------------------');
  Bus bus1 = Bus(maxSpeed: 100, mileAge: 35343);
  print(' This bus\'s seating capacity: ${bus1.seatingCapacity}');

  // TASK 4
  print('----------TASK 4-----------------');
  print('Added color property (= white) to Vehicle class');

  // TASK 5 TEST
  print('---------TASK 5----------------');
  MiniBus miniBus1 = MiniBus(maxSpeed: 120, mileAge: 65343);
  print(' Ticket price for this minibus is - ${miniBus1.ticketPrice} KGS');

  // Task 6 test
  print('----------TASK 6-------------');
  Student kairat = Student(name: 'Kairat');
  print(kairat.study());

  Teacher abai = Teacher(name: 'Abai');
  print(abai.explain());
}

// TASK 1
class Vehicle {
  final int maxSpeed;
  final int mileAge;
  final int seatingCapacity;
  final String color;

  get ticketPrice {
    return (seatingCapacity * 100) + (seatingCapacity * 100) * 0.1;
  }

  Vehicle(
      {required this.maxSpeed,
      required this.mileAge,
      required this.seatingCapacity,
      this.color = 'white'});
}

// TASK 2
class Scooter extends Vehicle {
  Scooter({
    required super.maxSpeed,
    required super.mileAge,
    required super.seatingCapacity,
  });
}

// TASK 3
class Bus extends Vehicle {
  Bus({
    required super.maxSpeed,
    required super.mileAge,
    super.seatingCapacity = 50,
  });
}

// TASK 5
class MiniBus extends Vehicle {
  MiniBus({
    required super.maxSpeed,
    required super.mileAge,
    super.seatingCapacity = 20,
  });
}

// TASK 6
class Person {
  final String name;
  Person({
    required this.name,
  });
}

class Student extends Person {
  Student({required super.name});

  String study() {
    return '$name is a student';
  }
}

class Teacher extends Person {
  Teacher({required super.name});

  String explain() {
    return '$name is a teacher';
  }
}
