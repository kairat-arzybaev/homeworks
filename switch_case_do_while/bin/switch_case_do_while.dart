import 'dart:io';
import 'package:switch_case_do_while/switch_case_do_while.dart'
    as switch_case_do_while;

void main() {
  // task 1
  // print('Enter a number between 1 and 31');
  // String day = stdin.readLineSync()!;
  // task1(int.parse(day));

  //task 2
  // print('Enter a number between 1 and 12');
  // String month = stdin.readLineSync()!;
  // task2(int.parse(month));

  // task 3
  // isStartswithA('abcde');

  // task 4
  // isStartsWith123('46897');

  //task 5
  // print('Enter string that consists of 3 digits');
  // String input = stdin.readLineSync()!;
  // sumNumbers(input);

  //task 6
  // print('Enter string that consists of 6 digits');
  // String input = stdin.readLineSync()!;
  // compareSums(input);

  // task 7
  // String savedPassword = '123456';
  // checkPassword('466', savedPassword);

  // task 8
  // String number = stdin.readLineSync()!;
  // task8(number);

  // task 9
  // print('enter number for start');
  // int start = int.parse(stdin.readLineSync()!);
  // print('enter number for end');
  // int end = int.parse(stdin.readLineSync()!);
  // sumOddNums(start, end);
}

// task 1
void task1(int day) {
  if (day > 0 && day <= 10) {
    print('$day is in 1st decade');
  } else if (day > 10 && day <= 20) {
    print('$day is in 2nd decade');
  } else if (day > 20 && day <= 31) {
    print('$day is in 3rd decade');
  } else {
    print('Number should be between 1-31');
  }
}

// task 2
void task2(int month) {
  if ((month > 0 && month <= 2) || month == 12) {
    print('month $month is in Winter');
  } else if (month >= 3 && month < 6) {
    print('month $month is in Spring');
  } else if (month >= 6 && month < 9) {
    print('month $month is in Summer');
  } else if (month >= 9 && month < 12) {
    print('month $month is in Autumn');
  } else {
    print('Please choose a number between 1-12');
  }
}

// task 3
void isStartswithA(String word) {
  if (word[0] == 'a') {
    print('True');
  } else {
    print('False');
  }
}

// task 4
void isStartsWith123(String number) {
  if (number[0] == '1' || number[0] == '2' || number[0] == '3') {
    print('Yes');
  } else {
    print('No');
  }
}

// task 5
void sumNumbers(String numbers) {
  int i = 0;
  int sum = 0;
  while (i < numbers.length) {
    sum += int.parse(numbers[i]);
    i++;
  }
  print(sum);
}

// task 6
void compareSums(String numbers) {
  int sum1 = 0;
  int sum2 = 0;
  for (int i = 0; i < 3; i++) {
    sum1 += int.parse(numbers[i]);
  }
  for (int i = 3; i < 6; i++) {
    sum2 += int.parse(numbers[i]);
  }
  if (sum1 == sum2) {
    print('Yes');
  } else {
    print('No');
  }
}

// task 7
void checkPassword(String submittedPassword, String savedPassword) {
  if (submittedPassword == savedPassword) {
    print('Password accepted');
  } else {
    print('Login again');
  }
}

// task 8
void task8(String input) {
  int count = -1;
  int sum = 0;

  do {
    print('Press a number');
    input = stdin.readLineSync()!;
    count++;
    sum += int.parse(input);
  } while (int.parse(input) != 0);
  double average = sum / count;

  print('количество - $count, сумма - $sum, среднее - $average');
}

// task 9
void sumOddNums(int start, int end) {
  int sum = 0;
  while (start <= end) {
    if (start.isOdd) {
      sum += start;
    }
    start++;
  }
  print(sum);
}
