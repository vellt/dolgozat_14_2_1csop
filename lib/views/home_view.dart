import 'package:doga/controller/home_view_controller.dart';
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
                  child: Text("1. Feladat"), 
                  onPressed: (){
                    controller.navigalj(1);
                  }
                ),
                CupertinoButton(
                  child: Text("2. Feladat"), 
                  onPressed: (){
                    controller.navigalj(2);
                    }
                ),
                CupertinoButton(
                  child: Text("3. Feladat"), 
                  onPressed: (){
                    controller.navigalj(3);
                    }
                ),
                CupertinoButton(
                  child: Text("4. Feladat"), 
                  onPressed: (){
                    controller.navigalj(4);
                    }
                ),
                CupertinoButton(
                  child: Text("5. Feladat"), 
                  onPressed: (){
                    controller.navigalj(5);
                    }
                ),
              ],
            ),
          ),
          body: controller.feladatnezet(),
        );
      },
    );
  }
}
