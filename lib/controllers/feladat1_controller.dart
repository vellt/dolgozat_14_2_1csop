import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Feladat1Controller extends GetxController{
  String primE= "nem tudom";
  TextEditingController textController = TextEditingController();

  void aSzamPrimE(){
    int szam= int.parse(textController.text);

    int szamlalo = 0;
    int csokkentesreSzantSzam=szam;
    while(szam!=1) {
      if((szam%csokkentesreSzantSzam)==0) {
        szamlalo++;
      }
      csokkentesreSzantSzam--;
  }

  if(szamlalo==2){
    primE = "Prim a szám";
  } else {
    primE = "Nem prim szám";
  }
  }
}
//4-->?
// 1es és önmag
// 4--> 4,2,1,