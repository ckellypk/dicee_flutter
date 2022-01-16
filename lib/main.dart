import 'package:flutter/material.dart';

/*
*Now that we have most of the UI intact we need to update it to handle 
* clicks by the user. 
* 
* To do this we need to turn our dice images into buttons. This is done using
* the FlatButton Widget. The flat button comes with its own padding so we 
* should get id of our exiting padding to prevent it from looking too weird
*
* Also the Flat Button is deprecated should use TextButton instead.
*
* Our button Widget has a required property called onPressed. This property
* takes an anonymous function. Here is where we provide the instructions to our
* button
*
* We want to tell the picture to update everytime the button is clicked.
*
* Lets create a variable ot store the dice number and place that variable value
* into the sting that is getting the image for the button. We are creating this
* variable within the build context so it can change during hot reload. If it
* was outside of the build method it wouldn't change.
*
*In the real world though we wouldn't want to create those variables everytime
*the page updates, so we can move it outside of the build context.
*
* Now we are able to change the picture based on a variable we need to be able
* to update the UI without using hot reload. We need to keep track of the
* pages state.

We will do this in the next lesson

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



class DicePage extends StatelessWidget {

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
}





