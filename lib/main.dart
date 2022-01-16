import 'dart:math';

import 'package:flutter/material.dart';

/*


*
* Now we need to find a way to randomize the dice. This is where we would call
* the Dart.Math class to use in our project. We use Random().nextInt to get
what we are looking for.

We want both dice to randomize when either is clicked so we update the state of
both dice when one is called.

This is the last step to the introduction to stateful widgets.
*
*
* */

void main() {

  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}


class _DicePageState extends State<DicePage> {

  int leftDiceNumber = 1;
  int rightDiceNumber = 2;

  void changeDiceFace () {
    setState(() {
      leftDiceNumber = Random().nextInt(6) +1;
      rightDiceNumber = Random().nextInt(6) +1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children:<Widget>[
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$leftDiceNumber.png'),
              onPressed: () {
                changeDiceFace();
              },
            ),
          ),
          Expanded(
              child: TextButton(
                  child: Image.asset('images/dice$rightDiceNumber.png'),
                  onPressed: () {
                      changeDiceFace();
                  }
              )
          ),
        ],
      ),
    );
  }
}

//Stateless Widget
/*class DicePage1 extends StatelessWidget {

  int leftDiceNumber = 3;
  int rightDiceNumber = 2;

  @override
  Widget build(BuildContext context) {


    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$leftDiceNumber.png'),
              onPressed: () {
                print("Left Button got pressed");
              },
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$rightDiceNumber.png'),
              onPressed: () {
                print("Right Button got pressed");
              }
            )
          ),
        ],
      ),
    );
  }
}*/





