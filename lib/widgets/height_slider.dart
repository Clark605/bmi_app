import 'package:flutter/material.dart';

class HeightSlider extends StatelessWidget {
  final int height;
  final ValueChanged<double> onChanged;

  const HeightSlider({
    super.key,
    required this.height,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: const Color(0xff24263B),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Height',
            style: TextStyle(
              fontSize: 18,
              color: Color(0xff8D8E98),
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                height.toString(),
                style: const TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
              ),
              const Text(
                'cm',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xff8D8E98),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Slider(
            value: height.toDouble(),
            min: 120,
            max: 220,
            onChanged: onChanged,
            activeColor: const Color(0xffE83D67),
            inactiveColor: const Color(0xff8D8E98),
          ),
        ],
      ),
    );
  }
}
