import 'package:flutter/material.dart';

class feladat1 extends StatelessWidget {
  const feladat1({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
      children: [
        Text("1.Feladat", style: TextStyle(fontSize: 20),),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            label: Text("Adj meg egy számot"),
          ),
        )
      ],
      ),
    );
  }
}