// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:practice_26_12_22/practice_26_12_22.dart' as practice_26_12_22;

void main(List<String> arguments) {
  // task 1 test
  print('-----------TASK 1-------------');
  print('Please, enter a year to check?');
  int year = int.parse(stdin.readLineSync()!);
  isLeapYear(year);

  // task 2 test

  // int num = 30;
  // checkNumber(num);

  // task 3 test
  // print('-----------TASK 3-------------');
  // print('Enter a number:');
  // int number = int.parse(stdin.readLineSync()!);
  // createLists(number);

  // task 4 test
  // print('-----------TASK 4-------------');
  // print('Enter a number to check whether it\'s a perfect or not:');
  // int number = int.parse(stdin.readLineSync()!);
  // isPerfectNumber(number);

  // task 5 test
}

// task 1
void isLeapYear(int year) {
  if (year % 100 == 0 && year % 400 == 0) {
    print('$year is a leap year');
  } else if (year % 4 == 0 && year % 100 != 0) {
    print('$year is a leap year');
  } else {
    print('$year is not a leap year');
  }
}

// task 2
// checkNumber(int num) {
//   while (num != 1) {
//     if (num % 2 == 0) {
//       double newNum = num / 2;
//       double num = newNum;
//       print(newNum);
//     } else {
//       double newNum1 = (num * 3 + 1) / 2;
//       print(newNum1);
//     }
//   }
// }

// task 3
void createLists(int number) {
  List oddNums = [];
  List evenNums = [];

  List myList = [for (int i = 1; i <= number; i++) i];

  for (int e in myList) {
    if (e.isEven) {
      evenNums.add(e);
    } else {
      oddNums.add(e);
    }
  }
  print('List of odd numbers - $oddNums');
  print('List of even numbers - $evenNums');
}

// task 4
void isPerfectNumber(int number) {
  int sum = 0;
  List myList = [for (int i = 1; i < number; i++) i];
  for (int i in myList) {
    if (number % i == 0) {
      sum += i;
    } else {
      continue;
    }
  }
  if (sum == number) {
    print('$number is  perfect number');
  } else {
    print('$number is not perfect number');
  }
}
