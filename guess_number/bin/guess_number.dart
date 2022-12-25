import 'dart:io';
import 'package:guess_number/guess_number.dart' as guess_number;

void main(List<String> arguments) {
  print(guessNumberBinary(1, 100));
}

// function guessing number using binary search
String guessNumberBinary(int startNumber, int endNumber) {
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
