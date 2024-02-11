import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

class shortcutWidget extends StatelessWidget {
  const shortcutWidget({required this.title, required this.routeToPage});

  final String title;
  //final String image_path;
  final String routeToPage;

@override
Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          // TEST: Dice roller
          /*Dice dice = Dice();
          int result = dice.rollDice(2,DiceTypes.d6);
          print("Rolled: $result");*/

          // TODO: Add the action to perform on tap
          GoRouter.of(context).go('/$routeToPage');
        },
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                // TODO: Add the parameters
                Text('Shortcut image'),
                SizedBox(height: 50),
                Text(title),
              ],
            ),
          ),
        ),
      ),
    );
  }
}