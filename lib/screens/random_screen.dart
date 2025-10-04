import 'package:flutter/material.dart';
import 'package:random_college/cards/randomaizer_card.dart';

class RandomScreen extends StatelessWidget {
  const RandomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double paddingMedia1 = MediaQuery.of(context).size.width;
    final double paddingMedia2 = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: paddingMedia1 * 0.05),
              child: RandomaizerCard(),
            ),
            SizedBox(height: paddingMedia2 * 0.005),
            Padding(
              padding: EdgeInsets.only(
                bottom: paddingMedia1 * 0.3
              ),
              child: Text("Список студентов: Васек", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.blueGrey[300]),),
            )
          ],
        ),
      ),
    );
  }
}
