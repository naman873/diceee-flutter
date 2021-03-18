import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dice'),
          backgroundColor: Colors.black26,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicepageState createState() => _DicepageState();
}

class _DicepageState extends State<DicePage> {
  int leftdice = 3;
  int rightdice = 4;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              flex: 1, // this is use for ratio between expanded
              child: FlatButton(
                onPressed: () {
                    click();
                },
                child: Image.asset('images/dice$leftdice.png'),
              )),
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {
                click();
              },
              child: Image.asset('images/dice$rightdice.png'),
            ),
          ),
        ],
      ),
    );
  }

  void click() {
    setState(() {
      rightdice = Random().nextInt(6) + 1;
      leftdice = Random().nextInt(6) + 1;
    });
  }

}
