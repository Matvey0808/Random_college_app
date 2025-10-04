import 'dart:math';

import 'package:flutter/material.dart';
import 'package:random_college/cards/randomaizer_card.dart';
import 'package:random_college/cards/randomaizer_card123.dart';
import 'package:random_college/screens/random_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RandomScreen(
      ),
    );
  }
}
