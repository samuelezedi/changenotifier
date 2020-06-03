
import 'package:flutter/material.dart';

class SettingsProvider with ChangeNotifier {
  String _unit;
  List<String> _waxLines;

  SettingsProvider() {
    _unit = "Imperial";
    _waxLines = ["Swix",  "Toko"];
  }

  //Getters
  String get unit => _unit;
  List<String> get waxLines => _waxLines;

  //Setters
  void setUnit(String unit) {
    _unit = unit;
    notifyListeners();
  }

  void _setWaxLines(List<String> waxLines) {
    _waxLines = waxLines;
    notifyListeners();
  }

  void addWaxLine(String waxLine) {
    if(_waxLines.contains(waxLine) == false) {
      _waxLines.add(waxLine);
      notifyListeners();
    }
  }

  void removeWaxLine(String waxLine) {
    if(_waxLines.contains(waxLine)){
      _waxLines.remove(waxLine);
      notifyListeners();
    }
  }
}