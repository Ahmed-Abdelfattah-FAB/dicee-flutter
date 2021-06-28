import 'dart:math';
import 'package:flutter/material.dart';

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
  int LeftDiceNum = 1;
  int RightDiceNum = 1;

  void ChangeDiceFace() {
    setState(() {
      LeftDiceNum = Random().nextInt(6) + 1;
      RightDiceNum = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                ChangeDiceFace();
              },
              child: Image.asset('images/dice$LeftDiceNum.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                ChangeDiceFace();
              },
              child: Image.asset('images/dice$RightDiceNum.png'),
            ),
          ),
        ],
      ),
    );
  }
}
