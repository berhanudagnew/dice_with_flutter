import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
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
  const DicePage({Key key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  // dicleare a variable
  int left_dice_number = 1;
  int right_dice_number = 1;
  // initialise a function
  void change_dice_face() {
    setState(
      () {
        left_dice_number = Random().nextInt(6) + 1;
        right_dice_number = Random().nextInt(6) + 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                change_dice_face();
              },
              child: Image.asset('images/dice$left_dice_number.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                change_dice_face();
              },
              child: Image.asset('images/dice$right_dice_number.png'),
            ),
          ),
        ],
      ),
    );
  }
}
