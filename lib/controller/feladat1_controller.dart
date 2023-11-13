import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Feladat1Controller extends GetxController{
  String prime = "nem tudom";
  TextEditingController textcontroller = TextEditingController();

  void aSzamPrime(){
    int szam = int.parse(textcontroller.text);

    int szamlalo = 0;
    int csokentesreszantszam = szam;
    while(csokentesreszantszam != 0) {
      if((szam % csokentesreszantszam) == 0){
        szamlalo ++;
      }
      csokentesreszantszam--;
    }
    
    if(szamlalo == 2) {
      prime = "Ez egy prímszám";
    }
    else{
      prime = "Ez NEM egy prímszám";
    }
    update();
  }
}