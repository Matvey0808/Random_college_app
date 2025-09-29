import 'dart:math';

import 'package:flutter/material.dart';
import 'package:random_college/models/random_models.dart';

class RandomScreen extends StatefulWidget {
  const RandomScreen({super.key});

  @override
  State<RandomScreen> createState() => _RandomScreenState();
}

class _RandomScreenState extends State<RandomScreen> {
  final List<Student> _students = [
    Student(name: "Матвей", chance: 25.0, average: 4.0),
    Student(name: "Игорь", chance: 20.0, average: 3.5),
    Student(name: "Даниил", chance: 35.0, average: 5.0),
    Student(name: "Алексей", chance: 20.0, average: 3.5),
  ];

  Student? _selectedStudent;
  final Random _random = Random();
  final List<Student> _selectedHistory = [];

  Student _RandomStudents() {
    double totalChance = _students.fold(
      0,
      (sum, student) => sum + student.chance,
    );

    double randomValue = _random.nextDouble() * totalChance;

    double currentSum = 0;
    for (var student in _students) {
      currentSum += student.chance;
      if (randomValue <= currentSum) {
        return student;
      }
    }
    return _students.last;
  }

    void _selectRandomStudent() {
        setState(() {
          _selectedStudent = _RandomStudents();
          _selectedHistory.insert(0, _selectedStudent!);
        });
    }

    void _resetSelection() {
        setState(() {
          _selectedStudent = null;
          _selectedHistory.clear();
        });
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
