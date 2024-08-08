import 'package:first_app/dice_roll.dart';
import 'package:flutter/material.dart';

class GrandientContainer extends StatelessWidget {
  final List<Color> colors;

  const GrandientContainer(this.colors, {super.key});

  @override
  Widget build(context) {
    return Container(
      //can't use const with BoxDecoration since colors is not compile-time constant
      decoration: BoxDecoration(gradient: LinearGradient(colors: colors)),
      child: const Center(
        child: DiceRoll(),
      ),
    );
  }
}
