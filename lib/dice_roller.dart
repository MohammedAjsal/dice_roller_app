import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoller = 1;
  // var rollClicker = 'assets/images/dice-1.png';

  rollDice() {
    // var diceRoll = Random().nextInt(6) + 1;
    setState(() {
      currentDiceRoller = randomizer.nextInt(6) + 1;
      // rollClicker = 'assets/images/dice-$diceRoll.png';
      print("Clicked");
    });
  }

  @override
  Widget build(context) {
    return Column(
      // it,s a new predefined main axis aligning way
      mainAxisSize: MainAxisSize.min,
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoller.png',
          width: 200,
        ),
        // sized box is a alternative way of to get space in between two widgets instead of padding
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          //  () {},
          style: TextButton.styleFrom(
            //we can set a space between the widget content and boundaries with the help of paddig
            padding: const EdgeInsets.only(top: 20),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 24),
          ),
          child: const Text("Roll Dice"),
        ),
      ],
    );
  }
}
