import 'package:dolgozat/views/feladatok/feladat1.dart';
import 'package:dolgozat/views/feladatok/feladat2.dart';
import 'package:dolgozat/views/feladatok/feladat3.dart';
import 'package:dolgozat/views/feladatok/feladat4.dart';
import 'package:dolgozat/views/feladatok/feladat5.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeViewController extends GetxController{
  int feladat=0 ;

  void navigaljFeladat(int feladat){
    this.feladat=feladat;
    update();
  }

 Widget feladatNezet(){
  switch(feladat){
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