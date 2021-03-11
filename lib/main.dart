import 'package:flutter/material.dart';
import 'package:viking/Ui%20Screen/LoginPage.dart';
import 'package:viking/Ui%20Screen/SplashScreen.dart';

import 'Ui Screen/Register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Splash(),
    );
  }
}