import 'package:flutter/material.dart';
import './start_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 59, 9, 144),
                const Color.fromARGB(255, 103, 41, 209),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft,
            ),
          ),
          child: StartScreen(),
        ),
      ),
    ),
  );
}
