import 'package:functions/functions.dart' as functions;

void main() {
  print(calcSquare(15));
  print(calcSum(20, 30));
  print(taskThree(10, 6, 2));
  print(calcSeconds(10));
  List array = [1, 3, 4, 5, 6];
  print(firstElement(array));
  print('-------');
  bool isRed = false;
  checkColor(isRed);
  print(isLessThanOne(834));
}

// Task 1
int calcSquare(int num) {
  return num * num;
}

// Task 2
int calcSum(int a, int b) {
  return a + b;
}

// Task 3
double taskThree(int a, int b, int c) {
  return (a - b) / c;
}

// Task 4
int calcSeconds(int a) {
  return a * 60;
}

// Task 5
int firstElement(List array) {
  return array.first;
}

// Task 6
void checkColor(bool check) {
  if (check == true) {
    print('Переменная имеет значение $check');
  } else {
    print('Переменная имеет значение ${!check}');
  }
}

// Task 7
bool isLessThanOne(int c) {
  if (c <= 0) {
    return true;
  } else {
    return false;
  }
}
