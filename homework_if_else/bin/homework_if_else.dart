import 'dart:math';
import 'package:homework_if_else/homework_if_else.dart' as homework_if_else;

void main(List<String> arguments) {
  // Задание 1
  var time = Random().nextInt(24);

  if (time >= 6 && time < 19) {
    print('На улице светло');
  } else {
    print('На улице темно');
  }

  // Задание 2
  int income = Random().nextInt(490001) + 10000;

  if (income <= 100000) {
    print('Процент: 5%, Сумма: ${income * 0.05}');
  } else if (income > 100000 && income <= 200000) {
    print('Процент: 7%, Сумма: ${income * 0.07}');
  } else {
    print('Процент: 10%, Сумма: ${income * 0.1}');
  }

  // Задание 3
  int number = Random().nextInt(12) + 1;

  if (number == 1) {
    print('Январь, Зима');
  } else if (number == 2) {
    print('Февраль, Зима');
  } else if (number == 3) {
    print('Март, Весна');
  } else if (number == 4) {
    print('Апрель, Весна');
  } else if (number == 5) {
    print('Май, Весна');
  } else if (number == 6) {
    print('Июнь, Лето');
  } else if (number == 7) {
    print('Июль, Лето');
  } else if (number == 8) {
    print('Август, Лето');
  } else if (number == 9) {
    print('Сентябрь, Осень');
  } else if (number == 10) {
    print('Октябрь, Осень');
  } else if (number == 11) {
    print('Ноябрь, Осень');
  } else {
    print('Декабрь, Зима');
  }
}
