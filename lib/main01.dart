import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Magic 8 Ball'),
            backgroundColor: Colors.blueGrey[900],
          ),
          body: MagicBall(),
          backgroundColor: Colors.blueGrey[700],
        ),
      ),
    );

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int magicBallNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        splashColor: Colors.blueGrey[600],
        onPressed: () {
          setState(() {
            magicBallNumber = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset('images/ball$magicBallNumber.png'),
      ),
    );
  }
}
