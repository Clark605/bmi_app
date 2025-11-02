import 'package:flutter/material.dart';

class CalculateButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;

  const CalculateButton({
    super.key,
    required this.onPressed,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      minWidth: double.infinity,
      height: 80,
      color: const Color(0xffE83D67),
      child: Center(
        child: Text(
          label,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
