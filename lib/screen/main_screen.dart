import 'package:flutter/material.dart';
import 'formula_screen.dart';

void main() {
  runApp(Formula_screen());
}

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Image(
              image: AssetImage('images/figure.png'),
            ),
          ),
        ),
      ),
    );
  }
}
