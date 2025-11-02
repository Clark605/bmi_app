import 'package:flutter/material.dart';

class CounterCard extends StatelessWidget {
  final String label;
  final int value;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const CounterCard({
    super.key,
    required this.label,
    required this.value,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: const Color(0xff24263B),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label,
              style: const TextStyle(
                fontSize: 18,
                color: Color(0xff8D8E98),
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              value.toString(),
              style: const TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                _RoundIconButton(icon: Icons.remove, onPressed: onDecrement),

                _RoundIconButton(icon: Icons.add, onPressed: onIncrement),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _RoundIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const _RoundIconButton({required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      mini: true,
      heroTag: null,
      backgroundColor: const Color(0xff8B8C9E),
      onPressed: onPressed,
      shape: const CircleBorder(),
      child: Icon(icon, color: Colors.white, size: 30),
    );
  }
}
