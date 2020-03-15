import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Dice'),
          centerTitle: true,
          backgroundColor: Colors.black,
          elevation: 0.0,
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
  int upDiceNumber = 1;
  int downDiceNumber = 1;

  void gotPressed() {
    setState(() {
      upDiceNumber = Random().nextInt(6) + 1;
      downDiceNumber = Random().nextInt(6) + 1;
    });
  }

  void gotLongPressed() {
    setState(() {
      upDiceNumber = 1;
      downDiceNumber = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              color: Colors.blue[900],
              onPressed: () {
                gotPressed();
              },
              onLongPress: () {
                gotLongPressed();
              },
              child: Image.asset('images/dice$upDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              color: Colors.red[900],
              onPressed: () {
                gotPressed();
              },
              onLongPress: () {
                gotLongPressed();
              },
              child: Image.asset('images/dice$downDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
