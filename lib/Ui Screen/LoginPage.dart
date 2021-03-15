import 'package:flutter/material.dart';

import 'package:viking/Animation/Slider.dart';
import 'package:viking/Ui%20Screen/ChooseCountry.dart';
import 'package:viking/Ui%20Screen/HomePage.dart';
import 'package:viking/Ui%20Screen/InternationalRates.dart';
import 'package:viking/Widgets/CountryFavouriteTile.dart';

import 'package:viking/Widgets/MyButtonRaised.dart';
import 'package:viking/Widgets/MyTextField.dart';
import 'package:flutter/services.dart';
import 'ActivateNumerScreen.dart';
import 'Register.dart';
import 'MessageScreen.dart';
import 'DialScreen.dart';
import 'RenewPhone.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/logo.png',
            width: 150,
            height: 150,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Viking',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: MyTextField(
              title: 'Email/Username',
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: MyTextField(
              title: 'Password',
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'Forget Password ?',
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          MyButtonRaised(
            onPressed: () {
              Navigator.push(context, SlideRightRoute(page: DialScreen()));
            },
            title: "Login ",
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('I don\'t have an account? '),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context, SlideRightRoute(page: RegisterPage()));
                },
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
