import 'dart:math';

import 'package:flutter/material.dart';

class BMICalculator {
  final int height;
  final int weight;
  final int age;
  final bool isMale;

  BMICalculator({
    required this.height,
    required this.weight,
    required this.age,
    required this.isMale,
  });

  double calculateBMI() {
    double heightInMeters = height / 100;
    return weight / pow(heightInMeters, 2);
  }

  String getResult() {
    double bmi = calculateBMI();
    if (bmi >= 25) {
      return 'Overweight';
    } else if (bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    double bmi = calculateBMI();
    if (bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }

  Color getResultColor() {
    String resultText = getResult();
    if (resultText == 'Normal') {
      return Colors.green;
    } else if (resultText == 'Overweight') {
      return Colors.orange;
    } else {
      return Colors.yellow;
    }
  }
}
