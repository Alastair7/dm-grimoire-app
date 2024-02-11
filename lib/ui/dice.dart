import 'package:dm_grimoire_app/src/diceEnum.dart';
import 'package:dm_grimoire_app/widgets/diceWidget.dart';
import 'package:flutter/material.dart';

class DiceScreen extends StatelessWidget{
  const DiceScreen({Key? key});

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dice Launcher'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                diceWidget(title: 'D4', diceType: DiceTypes.d4),
                diceWidget(title: 'D6', diceType: DiceTypes.d6),
                diceWidget(title: 'D8', diceType: DiceTypes.d8),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                diceWidget(title: 'D10', diceType: DiceTypes.d10),
                diceWidget(title: 'D12', diceType: DiceTypes.d12),
                diceWidget(title: 'D20', diceType: DiceTypes.d20),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                diceWidget(title: 'D100', diceType: DiceTypes.d100)
              ],
            ),
          ],
        ),
      ),
    );
  }
}