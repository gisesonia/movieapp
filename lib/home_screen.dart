import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.topCenter, children: [
      Container(
        padding: EdgeInsets.zero,
        height: 500.0,
        decoration: BoxDecoration(
            image: DecorationImage(
          alignment: Alignment.topLeft,
          image: AssetImage('assets/images/hero_pantera_negra.jpg'),
          fit: BoxFit.cover,
        )),
      ),
      Container(
        height: 500.0,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black, Colors.transparent],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
      ),
    ]);
  }
}
