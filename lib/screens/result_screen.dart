import 'package:bmi_app/models/bmi_calculator.dart';
import 'package:bmi_app/widgets/calculate_button.dart';
import 'package:bmi_app/widgets/my_app_bar.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  static const String routeName = '/result';

  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final BMICalculator calculator =
        ModalRoute.of(context)!.settings.arguments as BMICalculator;
    return Scaffold(
      backgroundColor: const Color(0xff1C2135),
      appBar: const MyAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: const Text(
              'Your Result',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: const Color(0xff24263B),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 50),
                  Text(
                    calculator.getResult().toUpperCase(),
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: calculator.getResultColor(),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    calculator.calculateBMI().toStringAsFixed(1),
                    style: const TextStyle(
                      fontSize: 100,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 60),
                  Text(
                    calculator.getInterpretation(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 18, color: Colors.white70),
                  ),
                ],
              ),
            ),
          ),
          CalculateButton(
            onPressed: () => Navigator.pop(context),
            label: 'Re-Calculate',
          ),
        ],
      ),
    );
  }
}
