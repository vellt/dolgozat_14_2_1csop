import 'package:dolgozat/controllers/feladat1_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Feladat1 extends StatelessWidget {
  Feladat1Controller controller=new Get.put(Feladat1Controller());

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Feladat1Controller>(
      init: controller,
      builder: (context, snapshot) {
        return Center(
          child: Column(
          children: [
            Text(
                '1. feladat',
                style: TextStyle(fontSize: 20),
                TextField(
                  controller: controller.textController,
                  decoration: InputDecoration(label: Text("adj meg egy számot")),
                )),
                CupertinoButton.filled(child: Text("check"), onPressed: (){
                  controller.aSzamPrimE();
                })
                Text(context.primE)
          ],
        );
        );
      }
    )
  }
}
