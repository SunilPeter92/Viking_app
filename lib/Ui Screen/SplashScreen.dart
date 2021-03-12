import 'package:flutter/material.dart';
import 'package:viking/Animation/Slider.dart';
import 'package:viking/Ui%20Screen/LoginPage.dart';

class Splash extends StatefulWidget {
  @override
  _SpalshState createState() => _SpalshState();
}

class _SpalshState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    new Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, SlideRightRoute(page: LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/images/logo.png',
          width: 150,
          height: 150,
        ),
      ),
    );
  }
}
