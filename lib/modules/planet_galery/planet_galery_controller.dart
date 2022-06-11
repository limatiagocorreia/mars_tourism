import 'package:flutter/material.dart';
import 'package:mars_tourism/model/planet_model.dart';

class PlanetGaleryController extends ChangeNotifier {
  PlanetModel? selectedPlanet;
  bool isImageVisible = false;
  String imagePath = '';

  setPlanet(PlanetModel planetModel) {
    selectedPlanet = planetModel;
    imagePath = planetModel.imagesPath[0];
  }

  void setSelectedImage(String planet) {
    imagePath = planet;
    isImageVisible = true;
    notifyListeners();
  }
}
