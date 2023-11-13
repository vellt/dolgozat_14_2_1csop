import 'package:doga/controller/feladat1_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class feladat1 extends StatelessWidget {
  Feladat1Controller controller = Get.put(Feladat1Controller());

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text("1. Feladat", style: TextStyle(fontSize: 20),),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              label: Text("Adj meg egy számoz!"),
            ),
          ),
          CupertinoButton(child: Text("Ellenörzés"), onPressed: (){
            controller.aSzamPrime();
          }),
          Text(controller.prime),
        ],
      ),
    );
  }
}