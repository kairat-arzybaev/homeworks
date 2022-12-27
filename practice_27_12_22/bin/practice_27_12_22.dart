// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:practice_27_12_22/practice_27_12_22.dart' as practice_27_12_22;

void main(List<String> arguments) {
  // TASK 1
  print('----------TASK 1-------------');
  List numbers = [-10, 54, 21, 98, -2, 15, -23, 100, -91, 5];
  bubbleSort(numbers);

  // TASK 2
  print('----------TASK 2----------------');
  String a = 'data 48 call 9231dadsad read13 blank0a';
  findLongest(a);

  // TASK 3
  print('----------TASK 3----------------');
  List<String> questions = [
    'Ты восстребованный программист?',
    'Flutter Developer зарабатывает больше чем Java Developer?',
    'ФК Дордой будет победителем ЛЧ Европы в следующем году? ',
    'Прощается Бишкек со смогом навсегда в ближайшее время ?',
    'Абай и Дастан самые крутые инструкторы по Flutter?',
    'Будет ли снег 31 декабря?'
  ];

  List<String> answers = [
    'Да',
    'Нет',
    'Скорее всего да',
    'Скорее всего нет',
    'Возможно',
    'Имеются перспективы',
    'Вопрос задан неверно'
  ];

  taskThree(questions, answers);

// TASK 5
  print('----------TASK 5----------------');
  taskFive();
}

// task 1
void bubbleSort(List num) {
  for (int i = 0; i < num.length - 1; i++) {
    for (int j = 0; j < num.length - 1; j++) {
      if (num[j] > num[j + 1]) {
        int tmp = num[j];
        num[j] = num[j + 1];
        num[j + 1] = tmp;
      }
    }
  }

  print(num);
}

// task 2
findLongest(String text) {
  List<int> lengths = [];
  List<String> textSplitted = text.split(' ');
  for (String element in textSplitted) {
    lengths.add(element.length);
  }
  int indexOfMax = lengths.indexOf(lengths.reduce(max));
  print('The longest word is - ${textSplitted[indexOfMax]}');
}

// task 3
taskThree(List a, List b) {
  int i = Random().nextInt(a.length);
  int j = Random().nextInt(b.length);
  print(a[i]);
  print(b[j]);
}

// task 5
class Sheep {
  int price;
  int meatWeight;
  Sheep({
    this.price = 15000,
    this.meatWeight = 20,
  });
}

class Cow {
  int price;
  int meatWeight;
  Cow({
    this.price = 150000,
    this.meatWeight = 150,
  });
}

class Horse {
  double price;
  double meatWeight;
  Horse({
    this.price = 100000,
    this.meatWeight = 100,
  });
}

taskFive() {
  List animalList = ['Sheep', 'Horse', 'Cow'];
  int quantity = Random().nextInt(100);
  print(quantity);
  List randomAnimalList = [];

  for (int i = 0; i < quantity; i++) {
    int selectAnimal = Random().nextInt(animalList.length);
    randomAnimalList.add(animalList[selectAnimal]);
  }

  print(randomAnimalList);

  int sheepCount = 0;
  int horseCount = 0;
  int cowCount = 0;
  for (var element in randomAnimalList) {
    if (element == 'Sheep') {
      sheepCount++;
    } else if (element == 'Horse') {
      horseCount++;
    } else {
      cowCount++;
    }
  }
  int totalQuantity = sheepCount + horseCount + cowCount;
  int totalPrice = sheepCount * 15000 + horseCount * 100000 + cowCount * 150000;
  int totalMeatWeight = sheepCount * 20 + horseCount * 100 + cowCount * 150;
  print(
      'Total animal quantity: $totalQuantity. There are $horseCount horses, $cowCount cows and $sheepCount sheeps.\nTotal price: $totalPrice KGS\nTotal meat: $totalMeatWeight kg.');
}
