import 'package:flutter/material.dart';
import 'package:mars_tourism/model/planet_model.dart';

class PlanetDetailController extends ChangeNotifier {
  PlanetModel? planet;
  double fontSize = 10;

  increaseFont() {
    fontSize++;
    notifyListeners();
  }

  decreaseFont() {
    fontSize--;
    notifyListeners();
  }

  void setPlanet(PlanetModel selectedPlanet) {
    planet = selectedPlanet;
  }
}
