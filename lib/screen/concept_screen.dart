// TODO: とにかく実装
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Concept_screen(),
    ),
  );
}

class Concept_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('解の公式'),
      ),
      body: Center(
      ),
    );
  }
}
