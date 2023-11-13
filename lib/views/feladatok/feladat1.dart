import 'package:dolgozat/controllers/feladat1_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class feladat1 extends StatelessWidget {
  feladat1Controller controller=Get.put(feladat1Controller());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<feladat1Controller>(
      init: controller,
      builder: (_) {
        return Center(
          child: Column(
            children: [
              Text(
                "1 fel",
                style: TextStyle(fontSize: 20),
              ),
              TextField(
                controller: controller.textController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("adj meg egy szamot"),
                ),
              ),
              CupertinoButton.filled(child: Text("check"), onPressed: (){
                controller.aSzamPrimE();
    
              },),
              Text(controller.primE,)
            ],
          ),
        );
      }
    );
  }
}
