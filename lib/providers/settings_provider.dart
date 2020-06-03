
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsProvider with ChangeNotifier {
  String _unit;
  List<String> _waxLines;
  SharedPreferences prefs;

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

  void savePrefs() async {
    prefs = await SharedPreferences.getInstance();
    prefs.setString('units', _unit);
    prefs.setStringList('waxLines', _waxLines);
  }

  void loadPrefs() async {
    prefs = await SharedPreferences.getInstance();
    String units = prefs.getString('units');
    List<String> waxLines = prefs.getStringList('waxLines');
    if(units != null) setUnit(units);
    if(waxLines != null) _setWaxLines(waxLines);
  }
}