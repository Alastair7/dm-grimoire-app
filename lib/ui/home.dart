import 'package:dm_grimoire_app/widgets/shortcutWidget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.count(
          crossAxisCount: 2, // Two columns
          mainAxisSpacing: 20.0, // Spacing between items vertically
          crossAxisSpacing: 20.0, // Spacing between items horizontally
          children: const <Widget>[
            shortcutWidget(title: 'Dice Launcher', routeToPage: 'dice'),
            /*shortcutWidget(title: 'Maps'),
            shortcutWidget(title: 'Bestiary'),
            shortcutWidget(title: 'Encounter Mode'),
            shortcutWidget(title: 'Generate Enemy'),
            shortcutWidget(title: 'Diaries'),
            shortcutWidget(title: 'Generate \nCharacter'),
            shortcutWidget(title: 'Generate Shop'),
            shortcutWidget(title: 'Generate Seed'),
            shortcutWidget(title: 'Generate \nDialogue'),*/
          ],
        ),
      ),
    );
  }


  /*Widget createCard(){
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        padding: EdgeInsets.all(20),
        child: const Column(
          children: <Widget>[
            Text('Card Title'),
            SizedBox(height: 8),
            Text('Card Body'),
          ],
        ),
      ),
    );
  }*/
}