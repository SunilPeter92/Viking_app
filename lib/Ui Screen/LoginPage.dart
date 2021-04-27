import 'package:flutter/material.dart';
import 'package:progress_dialog/progress_dialog.dart';
import 'package:viking/API/Api%20Class.dart';

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
  static ProgressDialog pr;
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    LoginPage.pr = ProgressDialog(context);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      resizeToAvoidBottomInset: false,
      body: Form(
        key: _formKey ,
        child: Column(
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
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).canvasColor),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: MyTextField(
                title: 'Email/Username',
                obs: false,
                textValidator:  (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter passowrd';
                  }
                  return null;
                },
                controllar: emailController,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: MyTextField(
                title: 'Password',
                obs: true,
                controllar: passwordController,
                textValidator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter passowrd';
                  }
                  return null;
                },
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
                        color: Theme.of(context).canvasColor,
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
                if (_formKey.currentState.validate()) {
                   LoginPage.pr.show();
                  API.Login(context ,   emailController.text , passwordController.text);
                }
              },
              title: "Login ",
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'I don\'t have an account? ',
                  style: TextStyle(color: Theme.of(context).canvasColor),
                ),
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
      ),
    );
  }
}
