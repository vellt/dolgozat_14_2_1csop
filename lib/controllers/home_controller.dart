import 'package:dolgozat/views/feladatok/feladat1.dart';
import 'package:dolgozat/views/feladatok/feladat2.dart';
import 'package:dolgozat/views/feladatok/feladat3.dart';
import 'package:dolgozat/views/feladatok/feladat4.dart';
import 'package:dolgozat/views/feladatok/feladat5.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeViewController extends GetxController {
  int feladat = 0;

  void navigaljFeladat(int feladat) {
    this.feladat = feladat;
    update();
  }

  Widget feladatNezet() {
    switch (feladat) {
      case 1:
        return Feladat1();
      case 2:
        return Feladat2();
      case 3:
        return Feladat3();
      case 4:
        return Feladat4();
      case 5:
        return Feladat5();
      default:
        return Container();
    }
  }
}
