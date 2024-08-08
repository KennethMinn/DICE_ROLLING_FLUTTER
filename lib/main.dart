import 'package:first_app/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: GrandientContainer([
        Color.fromARGB(255, 238, 194, 80),
        Color.fromARGB(255, 166, 126, 4)
      ]),
    ),
  ));
}
