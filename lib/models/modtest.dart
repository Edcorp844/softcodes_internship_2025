import 'converstions.dart';

extension GetDate on Message {
  String string() {
    String date =
        " ${timestamp.day.toString()}/ ${timestamp.month.toString()}/ ${timestamp.year.toString()}";

    return date;
  }
}


abstract class Person {
  String name;
  int age;
  Person({required this.name, required this.age});
}

enum Features {
  beards(string: 'Breads'),
  breast(string: 'Breasts');

  final String string;

  const Features({required this.string});
}

mixin Judgematurity {
  bool isAdult(Person person) {
    if (person.age >= 18) {
      return true;
    } else {
      return false;
    }
  }
}

mixin JudgeFeatures {
  Features getFeatures(Person person) {
    if (person is Boy) {
      return Features.beards;
    } else {
      return Features.breast;
    }
  }
}

class Boy extends Person with Judgematurity, JudgeFeatures {
  late bool isMan;
  Boy({required super.name, required super.age});
  get adult => super.isAdult(this);
  get features => super.getFeatures(this).string;
}

class Girl extends Person with Judgematurity, JudgeFeatures {
  late bool isWoman;
  Girl({required super.name, required super.age});
  get adult => super.isAdult(this);
  get features => super.getFeatures(this).string;
}

void main() {
  Girl alice = Girl(name: "Alice", age: 20);
  Boy bob = Boy(name: "Bob", age: 25);
  print('Bob: {adult: ${bob.adult}, features: ${bob.features}}');
  print("Alice: {adult: ${alice.adult}, features: ${alice.features}}");
}
