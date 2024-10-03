import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class RollDice extends StatefulWidget {
  const RollDice({super.key});

  @override
  State<RollDice> createState() => _RollDiceState();
}

class _RollDiceState extends State<RollDice> {
  var activeDiceImage = 2;
  var activeDiceImageTwo = 1;

  void rollDice() {
    setState(() {
      activeDiceImage = randomizer.nextInt(6) + 1;
      activeDiceImageTwo = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$activeDiceImage.png',
          width: 200,
        ),
        Image.asset(
          'assets/images/dice-$activeDiceImageTwo.png',
          width: 200,
        ),
        const SizedBox(
          height: 10,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: rollDice,
                style: TextButton.styleFrom(
                    padding: const EdgeInsets.only(top: 20),
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white,
                    textStyle: const TextStyle(fontSize: 40)),
                child: const Text('Roll Dice'))
          ],
        ),
      ],
    );
  }
}
