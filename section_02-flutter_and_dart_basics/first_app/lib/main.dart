// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  String currentDiceImage = 'assets/images/dice-2.png';

  int rollDice() {
    return Random().nextInt(6) + 1;
  }

  void updateDiceImage() {
    setState(() {
      int roll = rollDice(); // Get random number between 1 and 6
      currentDiceImage = 'assets/images/dice-$roll.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gradient Background App"),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.blue, Colors.red],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(currentDiceImage, width: 200),
              TextButton(
                onPressed: updateDiceImage,
                style: TextButton.styleFrom(
                    padding: EdgeInsets.only(top: 20),
                    foregroundColor: Colors.white,
                    textStyle: TextStyle(fontSize: 28)),
                child: Text('Roll Dice'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
