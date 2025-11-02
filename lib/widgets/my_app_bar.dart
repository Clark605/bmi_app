import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      foregroundColor: Colors.white,
      title: const Text(
        "BMI Calculator",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
      centerTitle: true,
      backgroundColor: const Color(0xff24263B),
      elevation: 6,
      shadowColor: Colors.black54,
    );
  }
}
