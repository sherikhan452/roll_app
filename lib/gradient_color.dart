import 'package:flutter/material.dart';
import 'package:roll_app/diceroller.dart';

class GradientColor extends StatelessWidget {
  const GradientColor({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 15, 81, 195),
          Color.fromARGB(255, 125, 115, 235)
        ], begin: Alignment.topLeft, end: Alignment.topRight),
      ),
      child: const Dice(),
    );
  }
}
