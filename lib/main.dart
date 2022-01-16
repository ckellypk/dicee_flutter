import 'package:flutter/material.dart';

/*
* This is the starting point of our application. It will update the UI based on
* the state we will create and update with clicks of a button.
*
* We need to add an image to the body of our application, but the size is a
* problem. To shrink the picture size we don't just want to adjust the width
* as it will not change dynamically. We want to add an Expanded widget to our
* row to fill the available space
*
* Expanded review the docs on expanded but only a few widgets can have this as a
* child widget. If you want to have one element have precedence when it comes
* to relative size you can add the flex property to the expanded widget
*
* You can also use shorthand to access the images in the project.
* Use Image.asset to reference the asset images. Its a lot shorter than nesting
* the asset url into the Image widget.
*
* Now that our project is set up from the UI standpoint lets start to add some
* functionality.
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
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset('images/dice1.png'),
            )
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset('images/dice1.png'),
              )
          ),
        ],
      ),
    );
  }
}
