import 'package:flutter/material.dart';
import 'package:magic_8_ball/Magic_ball.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Magic 8 Ball')),
      body: Center(
        child: Magic8Ball(),
      ),
    );
  }
}
