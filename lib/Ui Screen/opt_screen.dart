import 'package:flutter/material.dart';
import 'package:viking/Widgets/MyButtonRaised.dart';
import 'package:viking/Widgets/MyTextField.dart';
class OptScreen extends StatefulWidget {
  @override
  _OptScreenState createState() => _OptScreenState();
}

class _OptScreenState extends State<OptScreen> {
  bool check = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).cardColor,
        title: Text("Register", style: TextStyle(color: Colors.white)),
        leading: BackButton(
          color: Colors.white,
        ),

      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Create your account. Its free and takes a minute.',
              style: TextStyle(color: Theme.of(context).primaryColor,fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: [
              Expanded(child: MyTextField(title: 'First Name',)),
              Expanded(child: MyTextField(title: 'Last Name',)),
            ],
          ),
          MyTextField(title: 'Email',),
          MyTextField(title: 'Phone Number',),
          MyTextField(title: 'Password',),
          MyTextField(title: 'Confirm Password',),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
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
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'I have read and agree to the ',
                        style:
                        TextStyle(color: Theme.of(context).canvasColor),
                      ),

                    ],
                  ),
              SizedBox(height: 5,),
              Row(
                children: [
                  Text(
                    'Privacy Policy',
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    ' and ',
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Terms of Services',
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )
                ],
              )
            ],
          ),
          SizedBox(height: 10,),
          MyButtonRaised(title: 'Register Now',onPressed: (){},),
          // SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'By Registering and entering you email & Phone Number yopu agree to be contacted both by email and text message. Message and data rates apply.',
              style:TextStyle(color: Theme.of(context).canvasColor),

            ),
          ),
        ],
      ),
    );
  }
}
