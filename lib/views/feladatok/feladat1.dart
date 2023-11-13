import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/controllers/feladat1_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';

class Feladat1 extends StatelessWidget {
  Feladat1Controller controller = Get.put(Feladat1Controller());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Feladat1Controller>(
      init: controller,
      builder: (_){
        return Center(
          child: Column(
            children: [
              Text(
                "1.feladat",
                style: TextStyle(fontSize: 20),
              ),
              

            ]),
        ),
      },
      child: Column(
      children: [
        Text("1.feladat", style: TextStyle(fontSize: 20),),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            label: Text("Adj meg egy számot"),
          ),
        ),
        CupertinoButton.filled()
        (child: Text("check"),
         onPressed: () {
          controller.aSzamPrimE();
        })
      ],
    ),
    );
  }
}