import 'package:for_loop_2/for_loop_2.dart' as for_loop_2;

void main(List<String> arguments) {
  print('-----------Task 1-------------');
// task 1
  List list1 = [for (int i = 10; i < 21; i++) i];
  list1.forEach((element) {
    print(element * element);
  });
  print('----------Task 2-------------');
// task 2
  int n = 20;
  int sum = 0;
  for (int i = 1; i <= n; i++) {
    sum += i;
  }
  print(sum);

  print('------------Task 3-------------');
  // task 3
  double amount = 100;
  int duration = 1;

  for (int i = 1; i <= duration * 12; i++) {
    amount += amount * 0.03;
  }
  print(amount);
  print('--------------Task 4-----------');

  // task 4
  List list4 = [for (int i = 20; i < 51; i++) i];
  for (int number in list4) {
    if (number % 3 == 0 && number % 5 != 0) {
      print(number);
    }
  }
  print('------------Task 5--------------');

  // task 5
  List list5 = [for (int i = 1; i < 51; i++) i];
  for (int number in list5) {
    if (number % 5 == 0 || number % 7 == 0) {
      print(number);
    }
  }
  print('--------------Task 6------------');
  // task 6
  List list6 = [for (int i = 10; i < 100; i++) i];
  for (int number in list6) {
    if (number % 4 == 0 && number % 6 != 0) {
      print(number);
    }
  }
  print('--------------Task 7------------');
  // task 7
  List list7 = [for (int i = 100; i < 201; i++) i];
  for (int number in list7) {
    if (number % 17 == 0) {
      print(number);
    }
  }
  print('-----------Task 8---------------');
  // task 8

  int func8(n) {
    int sum = 0;
    for (int i = 1; i <= n; i++) {
      sum += i * i;
    }

    return sum;
  }

  print(func8(10));
}
