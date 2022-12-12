import 'package:lesson2_homework/lesson2_homework.dart' as lesson2_homework;

void main() {
  // Задание 1
  List<int> myList = [1, 7, 12, 3, 56, 2, 87, 34, 54];
  print(myList[0]);
  print(myList[4]);
  print(myList.last);

  // Задание 2
  List list_1 = [3, 12, 43, 1, 25, 6, 5, 7];
  List list_2 = [55, 11, 23, 56, 78, 1, 9];
  List list_3 = list_1 + list_2;
  print(list_3);

  // Задание 3
  List listOne = [
    'a',
    'd',
    'F',
    'l',
    'u',
    't',
    't',
    'e',
    'R',
    'y',
    '3',
    'b',
    'h',
    'j'
  ];
  print(listOne.getRange(2, 9).toList());

  // Задание 4
  List b = [1, 2, 3, 4, 5, 6, 7];
  print(b.contains(3));
  print(b.first);
  print(b.last);
  print(b.length);

  // Задание 5
  List c = [601, 123, 2, "dart", 45, 95, "dart24", 1];
  print(c.contains('dart'));
  print(c.contains(951));

  // Задание 6
  List d = ['post', 1, 0, 'flutter'];
  String myDart = 'Flutter';
  print(d.contains(myDart.toLowerCase()));

  // Задание 7
  List e = ['I', 'Started', 'Learn', 'Flutter', 'Since', 'April'];
  String myFlutter = e.join(' * ');
  print(myFlutter);

  // Задание 8
  List f = [1, 9, 3, 195, 202, 2, 5, 7, 9, 10, 3, 15, 0, 11];
  f.sort();
  print(f);
}
