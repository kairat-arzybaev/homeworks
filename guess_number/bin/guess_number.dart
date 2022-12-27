import 'dart:io';
import 'dart:math';
import 'package:guess_number/guess_number.dart' as guess_number;

void main(List<String> arguments) {
  // print(guessNumberBinary(1, 100));
  print(guessNumberComp(1, 100));
}

// function guessing number using binary search
String guessNumberUser(int startNumber, int endNumber) {
  int checkedNumber = (startNumber + endNumber) ~/ 2;
  String answer = stdin.readLineSync()!;
  print('I guess number. Is it $checkedNumber?');

  int steps = 0;
  while (answer != 'yes') {
    steps++;
    print('is it $checkedNumber ?');
    answer = stdin.readLineSync()!;
    if (answer == 'less') {
      endNumber = checkedNumber;
      checkedNumber = (startNumber + endNumber) ~/ 2;
    } else if (answer == 'greater') {
      startNumber = checkedNumber;
      checkedNumber = (startNumber + endNumber) ~/ 2;
    }
  }
  return 'I guessed number in $steps steps';
}

String guessNumberComp(int startNumber, int endNumber) {
  int numberX = Random().nextInt(100) + 1;
  int checkedNumber = (startNumber + endNumber) ~/ 2;
  int steps = 0;
  print('Computer\'s number is: $numberX');
  while (checkedNumber != numberX) {
    steps++;
    print('is it $checkedNumber ?');
    if (numberX > checkedNumber) {
      print('My number is greater than $checkedNumber');
      startNumber = checkedNumber;
      checkedNumber = (startNumber + endNumber) ~/ 2;
    } else if (numberX < checkedNumber) {
      print('My number is less than $checkedNumber');
      endNumber = checkedNumber;
      checkedNumber = (startNumber + endNumber) ~/ 2;
    }
  }
  return 'I guessed your number in $steps steps';
}
