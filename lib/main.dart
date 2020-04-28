import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.blueGrey,
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
  int rightDiceNumber = 1;

  void randomDice () {
    setState(() {
    rightDiceNumber = Random().nextInt(6) + 1;
    leftDiceNumber = Random().nextInt(6) + 1;
    print(randomDice);
                });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget> [
          Expanded(
            child: FlatButton(
              child: Image.asset(
                'images/dice$leftDiceNumber.png'
                ),
                onPressed: (){
                randomDice();
              },
              ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset(
                'images/dice$rightDiceNumber.png'
                ),
                onPressed: (){
                randomDice();
              },
              ),
          ),
        ],
      ),
    );
  }
}


