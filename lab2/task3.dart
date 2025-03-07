import 'dart:io';

void main() {
  print('Enter your age:');
  String? input = stdin.readLineSync();

  try {
    if (input == null || input.isEmpty) {
      throw FormatException('Age cannot be empty');
    }
    
    int age = int.parse(input);
    if (age < 0) {
      throw FormatException('Age cannot be negative');
    }
    
    int yearsLeft = 100 - age;
    print('You have $yearsLeft years left until you turn 100.');
  } catch (e) {
    print('Invalid input! Please enter a valid age.');
  }
}