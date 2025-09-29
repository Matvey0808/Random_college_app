import 'package:flutter/material.dart';

class Student {
  final String name;
  final double chance;
  final double average;

  Student({
    required this.name,
    required this.chance,
    required this.average
  });

  @override
  String toString() {
    return '$name ($average) - ${chance.toStringAsFixed(1)}%';
  }
}