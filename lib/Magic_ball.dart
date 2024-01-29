import 'dart:math';
import 'package:flutter/material.dart';

class Magic8Ball extends StatefulWidget {
  @override
  _Magic8BallState createState() => _Magic8BallState();
}

class _Magic8BallState extends State<Magic8Ball> {
  int ballNumber = 1;

  void shakeBall() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: shakeBall,
          child: Image.asset('Images/ball$ballNumber.png'),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: shakeBall,
          child: Text('Shake the Ball'),
        ),
      ],
    );
  }
}
