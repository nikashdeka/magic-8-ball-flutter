import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask Me Anything'),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int magicBallNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(clipBehavior: Clip.hardEdge,
        splashColor: Colors.blue[600],
        onPressed: () {
          setState(() {
            magicBallNumber = Random().nextInt(5) + 1;
            // print(magicBallNumber);
          });
        },
        child: Image.asset('images/ball$magicBallNumber.png'),
      ),
    );
  }
}
