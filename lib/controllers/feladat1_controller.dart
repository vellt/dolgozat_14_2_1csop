import 'package:flutter/material.dart';
import 'package:get/get.dart';

class feladat1Controller extends GetxController{
  String primE="nem tudom";
  TextEditingController textController =TextEditingController();

  void aSzamPrimE(){
    int szam= int.parse(textController.text);
    int szamlalo=0;
    int csokkentesreszantszam=0;
    while(szam !=1){
      if ((szam%csokkentesreszantszam)==0){
        szamlalo++;
      }
      csokkentesreszantszam--;
    }


    if(szamlalo==2){
      primE="Ez prim szam";
    }
    else{
      primE="nem az ";
    }
    update();
  }
}