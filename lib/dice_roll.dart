import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoll extends StatefulWidget {
  const DiceRoll({super.key});

  @override
  State<DiceRoll> createState() {
    return _DiceRollState();
  }
}

class _DiceRollState extends State<DiceRoll> {
  int number = 1;
  Random random =
      Random(); //declare here cuz don't wanna re-execute  everytime the dice rolls

  onRollDice() {
    setState(() {
      number = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize:
          MainAxisSize.min, //take the less space as possible vertically
      children: [
        Image.asset(
          "assets/images/dice-$number.png",
          width: 200,
        ),
        const SizedBox(
          height: 20, //can use like a space
        ),
        OutlinedButton(
            onPressed: onRollDice,
            style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 20)),
            child: const Text("Roll Dice"))
      ],
    );
  }
}
