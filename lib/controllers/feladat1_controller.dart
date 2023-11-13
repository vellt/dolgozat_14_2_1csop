import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Feladat1Controller extends GetxController {
  String primE = "nemtom";
  TextEditingController textController = TextEditingController();

  void aSamPrimE() {
    int szam = int.parse(textController.text);
    int szamlalo = 0;
    int csokkentresreSzantSzam = szam;
    while (csokkentresreSzantSzam != 0) {
      if ((szam % csokkentresreSzantSzam) == 0) {
        szamlalo++;
      }
      csokkentresreSzantSzam--;
    }
    if (szamlalo == 2) {
      primE = "Prím szám";
    } else {
      primE = "Nem prím szám";
    }
    update();
  }
}
