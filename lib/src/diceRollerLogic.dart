import 'dart:math';
import 'package:dm_grimoire_app/src/diceEnum.dart';

class Dice{
  List<int> _diceRollResults = [];

  int rollDice(int numberOfDice, DiceTypes diceType) {
    Random random = Random();
    int totalAmount;
    List<int> results = [];
    _diceRollResults.clear();

    for (int i = 0; i < numberOfDice; i++) 
    {
      int result;

      switch (diceType) {
      case DiceTypes.d4:
        result = random.nextInt(4) + 1;
        break;
      case DiceTypes.d6:
        result = random.nextInt(6) + 1;
        break;
      case DiceTypes.d8:
        result = random.nextInt(8) + 1;
        break;
      case DiceTypes.d10:
        result = random.nextInt(10) + 1;
        break;
      case DiceTypes.d12:
        result = random.nextInt(12) + 1;
        break;
      case DiceTypes.d20:
        result = random.nextInt(20) + 1;
        break;
      case DiceTypes.d100:
        result = random.nextInt(100) + 1;
        break;
    }

    results.add(result);

    _setDiceRollsResults(result);
    }

    totalAmount = results.reduce((sum, value) => sum + value);

    return totalAmount;
  }

   List<int>getDiceRollsResults(){
    return _diceRollResults;
   }

   _setDiceRollsResults(int diceResult){
      _diceRollResults.add(diceResult);
   }
}