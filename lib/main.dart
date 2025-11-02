import 'package:bmi_app/screens/bmi_screen.dart';
import 'package:bmi_app/screens/result_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BMI_App",
      debugShowCheckedModeBanner: false,
      initialRoute: BmiScreen.routeName,
      routes: {
        BmiScreen.routeName: (context) => const BmiScreen(),
        ResultScreen.routeName: (context) => const ResultScreen(),
      },
    );
  }
}
