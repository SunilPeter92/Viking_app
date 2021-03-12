import 'package:flutter/material.dart';

import 'package:viking/Animation/Slider.dart';
import 'HomePage.dart';
import 'IncreaseBalance.dart';
import 'package:viking/Ui%20Screen/SearchContacts.dart';
import 'InternationalRates.dart';
import 'package:viking/Widgets/MyButtonRaised.dart';
import 'package:viking/Widgets/MyTextField.dart';
import 'package:flutter/services.dart';
import 'Register.dart';
import 'ExtendCredits.dart';

import 'RenewPhone.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
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
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: MyTextField(
              title: 'Email/Username',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: MyTextField(
              title: 'Password',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
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
              Navigator.push(context, SlideRightRoute(page: Home()));
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
