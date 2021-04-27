import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:progress_dialog/progress_dialog.dart';
import 'package:viking/API/Api%20Class.dart';
import 'package:viking/Animation/Slider.dart';
import 'package:viking/Widgets/MyButtonBordered.dart';
import 'package:viking/Widgets/MyButtonRaised.dart';
import 'package:viking/Widgets/MyTextField.dart';
import 'package:flutter/services.dart';

import 'LoginPage.dart';

class RegisterPage extends StatefulWidget {
  static ProgressDialog pr;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<RegisterPage> {
  bool check = false;
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final ConfirmpasswordController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    RegisterPage.pr = ProgressDialog(context);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
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
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: MyTextField(
                  title: 'Email/Username',
                  obs: false,
                  controllar: emailController,
                  textValidator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Email';
                    }
                    return null;
                  },
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
                      return 'Please enter Password';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: MyTextField(
                  title: 'Confirm Password',
                  obs: true,
                  controllar: ConfirmpasswordController,
                  textValidator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter passowrd';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Checkbox(
                      value: check,
                      checkColor: Colors.white,
                      activeColor: Theme.of(context).canvasColor,
                      onChanged: (bool value) {
                        setState(() {
                          check = value;
                        });
                      },
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'I have read and agree to the ',
                              style:
                                  TextStyle(color: Theme.of(context).canvasColor, fontSize: 11),
                            ),
                            Text(
                              'Privacy Policy',
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                            Text(
                              ' and ',
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.bold , fontSize: 12),
                            ),
                          ],
                        ),
                        Text(
                          'Terms of Services',
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.bold , fontSize: 12),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              MyButtonRaised(
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    if(passwordController.text != ConfirmpasswordController.text){
                      print("confirm password does not match");
                      return  Fluttertoast.showToast(
                          msg: 'confirm password does not match!', toastLength: Toast.LENGTH_LONG);;
                    }
                    else{
                      RegisterPage.pr.show() ;
                      API.Register(
                        context,
                        emailController.text,
                        passwordController.text,
                      );
                    }

                  }
                },
                title: "Sign Up",
              ),
              Text(
                'Or Choose one of the option below',
                style: TextStyle(color: Theme.of(context).canvasColor),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: MyButtonBordered(
                      title: 'Facebook',
                    ),
                  ),
                  Expanded(
                    child: MyButtonBordered(
                      title: 'Google',
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already Have an Account? ',
                    style: TextStyle(color: Theme.of(context).canvasColor),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, SlideRightRoute(page: LoginPage()));
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
