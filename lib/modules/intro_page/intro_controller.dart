import 'package:flutter/material.dart';

class IntroController extends ChangeNotifier {
  bool isFoundersVisible = false;

  toggleVisibility() {
    isFoundersVisible = isFoundersVisible ? false : true;
    notifyListeners();
  }
}
