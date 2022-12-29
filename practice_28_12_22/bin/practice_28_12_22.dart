import 'dart:math';
import 'package:practice_28_12_22/practice_28_12_22.dart' as practice_28_12_22;

void main(List<String> arguments) {
  // TASK 1
  print('----------TASK 1--------------');

  int x = Random().nextInt(30) - 15;
  int y = Random().nextInt(30) - 15;
  print('$x, $y');
  print(throwDart(x, y));

  // TASK 2
  print('----------TASK 2--------------');
  getAbbr('Liquid-crystal display');

  //  TASK 3
  print('----------TASK 3--------------');
  print(classifyTriangle(5, 5, 5));

  // TASK 4
  print('----------TASK 4--------------');
  String numbers = '4539 3195 0343 6467';
  String cleanNumbers = removeSpaces(numbers);
  print(isValidLuhnNumber(cleanNumbers));
}

// task 1
throwDart(int x, int y) {
  int score;
  x = x.abs();
  y = y.abs();

  int larger = x > y ? x : y;

  if (x <= 1 && y <= 1) {
    score = 10;
  } else if (larger > 1 && larger <= 5) {
    score = 5;
  } else if (larger > 5 && larger <= 10) {
    score = 1;
  } else {
    score = 0;
  }
  return 'You got $score points';
}

// task 2
getAbbr(String text) {
  List splittedText = text.split(' ');
  String abbr = '';

  for (int i = 0; i < splittedText.length; i++) {
    if (splittedText[i].contains('-')) {
      splittedText[i].split('-').forEach((e) {
        abbr += e.split('')[0].toUpperCase();
      });
    } else {
      abbr += splittedText[i].split('')[0].toUpperCase();
    }
  }
  print(abbr);
}

// task 3
bool isTriangle(int side1, int side2, int side3) {
  if (side1 <= 0 || side2 <= 0 || side3 <= 0) {
    return false;
  }
  if (side1 > side2 + side3 || side2 > side1 + side3 || side3 > side1 + side2) {
    return false;
  }

  return true;
}

String classifyTriangle(int side1, int side2, int side3) {
  if (!isTriangle(side1, side2, side3)) {
    return "not a triangle";
  } else if (side1 == side2 && side2 == side3) {
    return "equilateral";
  } else if (side1 == side2 || side1 == side3 || side2 == side3) {
    return "isosceles";
  } else {
    return "scalene";
  }
}

// task 4
String removeSpaces(String number) {
  return number.replaceAll(' ', '');
}

bool isValidLuhnNumber(String number) {
  List<int> digits = number.split('').map((c) => int.parse(c)).toList();

  digits = digits.reversed.toList();

  int sum = 0;
  for (int i = 0; i < digits.length; i++) {
    int digit = digits[i];
    if (i.isOdd) {
      digit *= 2;

      if (digit > 9) {
        digit -= 9;
      }
    }

    sum += digit;
  }

  return sum % 10 == 0;
}
