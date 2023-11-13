import 'package:doga/views/feldatok/feladat1.dart';
import 'package:doga/views/feldatok/feladat2.dart';
import 'package:doga/views/feldatok/feladat3.dart';
import 'package:doga/views/feldatok/feladat4.dart';
import 'package:doga/views/feldatok/feladat5.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeViewController extends GetxController{
  int feladat = 0;

  void navigalj(int feladat){
    this.feladat = feladat;
    update();
  }

  Widget feladatnezet(){
    switch(feladat) {
      case 1:
        return feladat1();
      case 2:
        return feladat2();
      case 3:
        return feladat3();
      case 4:
        return feladat4();
      case 5:
        return feladat5();
      default:
      return Container();
    }
  }



}