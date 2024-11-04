/// This is a file to learn dart basics

import 'dart:io';
import 'dart:math';
import 'goodbye.dart';

void main() {
  print("***** Dart Age Calculator *****\n");
  print("Enter your name > ");
  String? name = stdin.readLineSync();
  print("Welcome to the age calculator $name\n");

  print("How old are you? > ");
  int? age = int.parse(stdin.readLineSync()!);

  if (age < 18) {
    print("You are underage!\n");
    goodbye();
    exit(0);
  }

  print("How much do you weigh (kgs)? > ");
  double weight = double.parse(stdin.readLineSync()!);

  print("How tall are you (m)? > ");
  double height = double.parse(stdin.readLineSync()!);

  double bmi = weight / (pow(height, 2));
  String formattedBMI = bmi.toStringAsFixed(2);

  String status;

  if (bmi < 18.5) {
    status = "Underweight";
  } else if (bmi >= 18.5 && bmi < 24.9) {
    status = "Normal weight";
  } else if (bmi >= 25 && bmi < 29.9) {
    status = "Overweight";
  } else {
    status = "Obesity";
  }

  print("Name: $name");
  print("Age: $age");
  print("Height: $height");
  print("Weight: $weight");
  print("BMI: $formattedBMI, you are $status");
  goodbye();
}
