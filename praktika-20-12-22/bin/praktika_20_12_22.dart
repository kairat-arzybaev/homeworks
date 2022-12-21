import 'dart:io';
import 'package:praktika_20_12_22/praktika_20_12_22.dart' as praktika_20_12_22;

void main(List<String> arguments) {
  // TASK 1 - TEST
  // print('Enter a number');
  // String input1 = stdin.readLineSync()!;
  // getReverse(input1);

  // TASK 2 - TEST
  // print('Enter a number');

  // String input2 = stdin.readLineSync()!;
  // findMax(input2);

  // TASK 3 - TEST
  // print('Enter a number');
  // double input3 = double.parse(stdin.readLineSync()!);
  // divideByTWo(input3);

  // TASK 4 - TEST
  // print('Enter a number');
  // int input4 = int.parse(stdin.readLineSync()!);
  // fibonacci(input4);
}

// task 1
void getReverse(String input) {
  var numbers = input.split('');
  print(numbers.reversed.join());
}

// task 2
void findMax(String input) {
  var numbers = input.split('');
  numbers.sort();
  print(numbers.last);
}

// task 3
void divideByTWo(double number) {
  double sum = 0;

  for (int i = 0; i <= number; i++) {
    var a = number / 2;
    var b = a / 2;
    sum += b;
  }
  print(sum);
}

// task 4
void fibonacci(int number) {
  var a = 0;
  var b = 1;

  for (int i = 1; i <= number; i++) {
    var c = a + b;
    a = b;
    b = c;
    print(b);
  }
}
