import 'package:flutter/material.dart';

class GenderCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const GenderCard({
    super.key,
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: isSelected
                ? const Color(0xff1D1F33)
                : const Color(0xff24263B),
            borderRadius: BorderRadius.circular(12),
            border: isSelected
                ? Border.all(color: const Color(0xffE83D67), width: 2)
                : null,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 100,
                color: isSelected ? Colors.white : const Color(0xff8D8E98),
              ),
              const SizedBox(height: 12),
              Text(
                label,
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                  color: isSelected ? Colors.white : const Color(0xff8D8E98),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
