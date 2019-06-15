import 'package:flutter/material.dart';

class OlaMundoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Olá Mundo'),),
      body: Center(child: Text('Olá Mundo')),
    );
  }
}