import 'package:bmi_app/models/bmi_calculator.dart';
import 'package:bmi_app/screens/result_screen.dart';
import 'package:bmi_app/widgets/calculate_button.dart';
import 'package:bmi_app/widgets/counter_card.dart';
import 'package:bmi_app/widgets/gender_card.dart';
import 'package:bmi_app/widgets/height_slider.dart';
import 'package:bmi_app/widgets/my_app_bar.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});
  static const String routeName = '/bmi';

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  bool isMale = true;
  int height = 150;
  int weight = 60;
  int age = 26;

  void _calculateBMI() {
    BMICalculator calculator = BMICalculator(
      height: height,
      weight: weight,
      age: age,
      isMale: isMale,
    );

    Navigator.pushNamed(context, ResultScreen.routeName, arguments: calculator);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1C2135),
      appBar: const MyAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                GenderCard(
                  icon: Icons.male,
                  label: 'Male',
                  isSelected: isMale,
                  onTap: () {
                    setState(() {
                      isMale = true;
                    });
                  },
                ),
                GenderCard(
                  icon: Icons.female,
                  label: 'Female',
                  isSelected: !isMale,
                  onTap: () {
                    setState(() {
                      isMale = false;
                    });
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: HeightSlider(
              height: height,
              onChanged: (newHeight) {
                setState(() {
                  height = newHeight.round();
                });
              },
            ),
          ),
          Expanded(
            child: Row(
              children: [
                CounterCard(
                  label: 'Weight',
                  value: weight,
                  onIncrement: () {
                    setState(() {
                      weight++;
                    });
                  },
                  onDecrement: () {
                    setState(() {
                      if (weight > 1) weight--;
                    });
                  },
                ),
                CounterCard(
                  label: 'Age',
                  value: age,
                  onIncrement: () {
                    setState(() {
                      age++;
                    });
                  },
                  onDecrement: () {
                    setState(() {
                      if (age > 1) age--;
                    });
                  },
                ),
              ],
            ),
          ),
          CalculateButton(onPressed: _calculateBMI, label: 'Calculate'),
        ],
      ),
    );
  }
}
