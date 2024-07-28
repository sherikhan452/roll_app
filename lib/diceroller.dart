import 'dart:math';

import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() {
    return _Dice();
  }
}

class _Dice extends State<Dice> {
  var denim = 2;
  void runDice() {
    setState(() {
      denim = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/dice-$denim.png',
            width: 200,
          ),
          TextButton(
            onPressed: runDice,
            style: TextButton.styleFrom(foregroundColor: Colors.black),
            child: const Text("Dice Roller"),
          ),
        ],
      ),
    );
  }
}
