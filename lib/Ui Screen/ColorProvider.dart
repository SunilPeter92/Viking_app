import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

ThemeData light = ThemeData(
  fontFamily: 'Comfortaa',
  // primarySwatch: Colors.fromRGBO(48, 48, 66, 100),
  accentColor: Color.fromRGBO(48, 48, 66, 10),
  cardColor:  Colors.orange,
  canvasColor: Color.fromRGBO(134, 135, 145, 1),
  visualDensity: VisualDensity.adaptivePlatformDensity,
);

ThemeData dark = ThemeData(
  fontFamily: 'Comfortaa',
  // primarySwatch: Colors.fromRGBO(48, 48, 66, 100),
  accentColor: Color.fromRGBO(48, 48, 66, 10),
  cardColor:  Colors.purple,
  canvasColor: Color.fromRGBO(134, 135, 145, 1),
  visualDensity: VisualDensity.adaptivePlatformDensity,
);

ThemeData green = ThemeData(
  fontFamily: 'Comfortaa',
  // primarySwatch: Colors.fromRGBO(48, 48, 66, 100),
  accentColor: Color.fromRGBO(48, 48, 66, 10),
  cardColor:  Colors.green,
  canvasColor: Color.fromRGBO(134, 135, 145, 1),
  visualDensity: VisualDensity.adaptivePlatformDensity,
);


ThemeData brown = ThemeData(
  fontFamily: 'Comfortaa',
  // primarySwatch: Colors.fromRGBO(48, 48, 66, 100),
  accentColor: Color.fromRGBO(48, 48, 66, 10),
  cardColor:  Colors.brown,
  canvasColor: Color.fromRGBO(134, 135, 145, 1),
  visualDensity: VisualDensity.adaptivePlatformDensity,
);


ThemeData red = ThemeData(
  fontFamily: 'Comfortaa',
  // primarySwatch: Colors.fromRGBO(48, 48, 66, 100),
  accentColor: Color.fromRGBO(48, 48, 66, 10),
  cardColor:  Colors.red,
  canvasColor: Color.fromRGBO(134, 135, 145, 1),
  visualDensity: VisualDensity.adaptivePlatformDensity,
);



class ThemeNotifier extends ChangeNotifier {
  final String key = "theme";
  SharedPreferences _prefs;
  bool _darkTheme;
  int status ;
  bool get darkTheme => _darkTheme;

  ThemeNotifier() {
    _darkTheme = true;
    _loadFromPrefs();
  }

  toggleTheme(int statu) {
    status = statu ;
    _saveToPrefs();
    notifyListeners();
  }

  _initPrefs() async {
    if(_prefs == null)
      _prefs = await SharedPreferences.getInstance();
  }

  _loadFromPrefs() async {
    await _initPrefs();
    _darkTheme = _prefs.getBool(key) ?? true;
    notifyListeners();
  }

  _saveToPrefs()async {
    await _initPrefs();
    _prefs.setBool(key, _darkTheme);
  }

}