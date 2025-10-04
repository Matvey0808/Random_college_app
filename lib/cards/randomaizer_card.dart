import 'package:flutter/material.dart';

class RandomaizerCard extends StatelessWidget {
  const RandomaizerCard({super.key});

  @override
  Widget build(BuildContext context) {
    final double _widthCardRandom = MediaQuery.of(context).size.width;
    final double _heightCardRandom = MediaQuery.of(context).size.height;
    return Center(
      child: SizedBox(
        width: _widthCardRandom * 0.85,
        height: _heightCardRandom * 0.4,
        child: Card(
          elevation: 0,
          color: Colors.blueGrey[200],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(16)
          ),
          child: Padding(
            padding: EdgeInsets.only(
              left: _widthCardRandom * 0.015,
              right: _widthCardRandom * 0.015,
              top: _heightCardRandom * 0.006,
              bottom: _heightCardRandom * 0.006
            ),
            child: Card(
              elevation: 0,
              color: Colors.blueGrey[100],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(16)
              ), 
            ),
          ),
        ),
      ),
    );
  }
}
