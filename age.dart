import 'dart:io';
class AgeHandler {
  int? getAgeInput() {
    print("Please enter your age:");
    String? input = stdin.readLineSync();
    try {
      int age = int.parse(input!);
      if (age < 0) {
        throw Exception("Age cannot be negative.");
      }
      return age;
    } catch (e) {
      print("Invalid input: Please enter a valid age.");
      return null;
    }
  }
  void calculateYearsToHundred(int? age) {
    if (age != null) {
      int yearsLeft = 100 - age;
      if (yearsLeft > 0) {
        print("You have $yearsLeft years left until you turn 100.");
      } else if (yearsLeft == 0) {
        print("Congratulations! You're 100 years old!");
      } else {
        print("You turned 100 ${-yearsLeft} years ago!");
      }
    }
  }
}
class AgeApp {
  final AgeHandler _ageHandler = AgeHandler();

  void run() {
    int? age = _ageHandler.getAgeInput();
    _ageHandler.calculateYearsToHundred(age);
  }
}
void main() {
  AgeApp app = AgeApp();
  app.run();
}
