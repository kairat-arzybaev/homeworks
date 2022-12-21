import 'package:class_praktika/class_praktika.dart' as class_praktika;

void main(List<String> arguments) {
  // COUNTRY
  print('--------------COUNTRY---------------');
  Country hawaii = Country(name: 'Hawaii', climate: 'tropical');
  hawaii.getInfo();

  // CAR
  print('---------------CAR------------------');

  Car honda = Car(horsePower: 85, color: 'Grey', model: 'Fit', price: 6000);
  honda.getInfo();

  // PHONE
  print('--------------PHONE--------------');

  Phone phone1 = Phone(number: 7483638, model: 'Google Pixel', weight: 150);
  Phone phone2 = Phone(number: 244756, model: 'Xiaomi 12', weight: 180);
  Phone phone3 = Phone(number: 8795535, model: 'iphone 13 pro', weight: 190);

  print('${phone1.number}, ${phone1.model}, ${phone1.weight}');
  print('${phone2.number}, ${phone2.model}, ${phone2.weight}');
  print('${phone3.number}, ${phone3.model}, ${phone3.weight}');

  String name1 = 'Elon Musk';
  phone1.receiveCall(name1);

  String name2 = 'Ronaldo';
  phone2.receiveCall(name2);

  String name3 = 'Mirbek';
  phone3.receiveCall(name3);

  print(phone1.getNumber());
  print(phone2.getNumber());
  print(phone3.getNumber());

  int receiverPhoneNumber1 = 1234;
  phone1.sendMessage(receiverPhoneNumber1);

  int receiverPhoneNumber2 = 5678;
  phone1.sendMessage(receiverPhoneNumber2);

  int receiverPhoneNumber3 = 9876;
  phone1.sendMessage(receiverPhoneNumber3);

  // READER
  print('------------READER----------------');
  Reader reader1 = Reader(
      fullName: 'Kairat Arzybaev',
      idCard: 84628,
      faculty: 'Economics',
      phoneNumber: 4643435);

  reader1.takeBook(1, 'Ak keme');
  reader1.returnBook(1, 'Ak Keme');
}

// COUNTRY
class Country {
  String name;
  String climate;

  Country({
    required this.name,
    required this.climate,
  });

  void getInfo() {
    print('$name, $climate');
  }
}

// CAR
class Car {
  int horsePower;
  String color;
  String model;
  double price;
  Car({
    required this.horsePower,
    required this.color,
    required this.model,
    required this.price,
  });

  void getInfo() {
    print(
        'This car\'s model: $model, horse power: $horsePower, color; $color, price: $price \$');
  }
}

// PHONE
class Phone {
  int number;
  String model;
  int weight;
  Phone({
    required this.number,
    required this.model,
    required this.weight,
  });

  void receiveCall(String name) {
    print('$name is calling');
  }

  String getNumber() {
    return 'Your number is: $number';
  }

  void sendMessage(receiverPhoneNumber) {
    print('You are sending message to $receiverPhoneNumber');
  }
}

// READER
class Reader {
  String fullName;
  int idCard;
  String faculty;
  int phoneNumber;
  Reader({
    required this.fullName,
    required this.idCard,
    required this.faculty,
    required this.phoneNumber,
  });

  void takeBook(int booksAmount, String bookName) {
    print('$fullName took $booksAmount book(s)\n Book\'s name is: $bookName');
  }

  void returnBook(int booksAmount, String bookName) {
    print(
        '$fullName returned $booksAmount book(s)\n Book\'s name is: $bookName');
  }
}
