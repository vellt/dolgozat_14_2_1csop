import 'package:dolgozat/controllers/home_view_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  HomeViewController controller = Get.put(HomeViewController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewController>(
        init: controller,
        builder: (_) {
          return Scaffold(
            appBar: AppBar(),
            drawer: Drawer(
              child: Column(
                children: [
                  CupertinoButton(
                    child: Text("1.feladat"), 
                    onPressed: () {
                      controller.navigaljFeladat(1);
                    }
                    ),
                  CupertinoButton(
                    child: Text("2.feladat"), 
                    onPressed: () {
                      controller.navigaljFeladat(2);
                    }
                    ),
                  CupertinoButton(
                    child: Text("3.feladat"), 
                    onPressed: () {
                      controller.navigaljFeladat(3);
                    }
                    ),
                  CupertinoButton(
                    child: Text("4.feladat"), 
                    onPressed: () {
                      controller.navigaljFeladat(4);
                    }
                    ),
                  CupertinoButton(
                    child: Text("5.feladat"), 
                    onPressed: () {
                      controller.navigaljFeladat(5);
                    }
                    ),
                ],
              ),
            ),
            body: controller.feladatNezet(),
          );
        });
  }
}
