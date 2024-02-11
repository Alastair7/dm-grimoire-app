import 'package:flutter/material.dart';
import '../src/diceEnum.dart';
import '../src/diceRollerLogic.dart';


class diceWidget extends StatelessWidget {
  const diceWidget({super.key, required this.title, required this.diceType});

  final String title;
  final DiceTypes diceType;

@override
Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          int diceAmount = 1;
          Dice dice = Dice();
          int result = dice.rollDice(diceAmount, diceType);
          print("Rolling $diceAmount $diceType \nRolled: $result");
        },
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const SizedBox(height: 10),
                Text(title),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

 _setDice(dc){
  switch(dc){
    case 'd4':
      return DiceTypes.d4;
    case 'd6':
      return DiceTypes.d6;
    case 'd8':
      return DiceTypes.d8;
    case 'd10':
      return DiceTypes.d10;
    case 'd12':
      return DiceTypes.d12;
    case 'd20':
      return DiceTypes.d20;
    case 'd100':
      return DiceTypes.d100;
  }
}