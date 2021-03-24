import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:viking/Widgets/MyButtonRaised.dart';
//import 'package:viking/const_font/constFont.dart';

import '../Animation/Slider.dart';
import 'HomePage.dart';
import 'InternationalRates.dart';

class ActivateNumber extends StatefulWidget {
  @override
  _ActivateNumberState createState() => _ActivateNumberState();
}

class _ActivateNumberState extends State<ActivateNumber> {
  double width, height;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Theme.of(context).accentColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.07),
            child: Column(
              children: [
                SizedBox(height: height * 0.1),
                Center(
                  child: Text(
                    "ACTIVATE YOUR",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: width * 0.065,
                        color: Theme.of(context).canvasColor),
                    //  GoogleFonts.comfortaa(
                    //     textStyle: TextStyle(
                    //         fontWeight: FontWeight.bold,
                    //         fontSize: width * 0.065,
                    //         color: Theme.of(context).canvasColor)

                    //         ),
                  ),
                ),
                Center(
                  child: Text(
                    "NUMBER",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: width * 0.065,
                        color: Theme.of(context).canvasColor),
                  ),
                ),
                SizedBox(height: height * 0.05),
                Row(
                  children: [
                    Icon(
                      Icons.check,
                      color: Colors.green,
                    ),
                    Text(
                      "Cheap international calls & messages",
                      style: TextStyle(
                          fontSize: width * 0.040,
                          color: Theme.of(context).canvasColor),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.01),
                Row(
                  children: [
                    Icon(
                      Icons.check,
                      color: Colors.green,
                    ),
                    Text(
                      "Multiple numbers & flexible Rates",
                      style: TextStyle(
                          fontSize: width * 0.045,
                          color: Theme.of(context).canvasColor),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.01),
                Row(
                  children: [
                    Icon(
                      Icons.check,
                      color: Colors.green,
                    ),
                    Text(
                      "And more useful features",
                      style: TextStyle(
                          fontSize: width * 0.045,
                          color: Theme.of(context).canvasColor),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "3 days free trial ",
                      style: TextStyle(
                          fontSize: width * 0.040,
                          fontFamily: 'Comfortaa',
                          color: Theme.of(context).canvasColor),
                    ),
                    Text(
                      "then \$300/ a week ",
                      style: TextStyle(
                          color: Colors.green, fontSize: width * 0.040),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Auto-renewable Cancel anytime",
                      style: TextStyle(
                          fontSize: width * 0.040,
                          color: Theme.of(context).canvasColor),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.04),
                SizedBox(
                  height: height * 0.1,
                  child: MyButtonRaised(
                    onPressed: () {
                      Navigator.push(context, SlideRightRoute(page: Home()));
                    },
                    title: "Continue",
                  ),
                ),
                SizedBox(height: height * 0.04),
                Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.06, right: width * 0.06),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.green,
                          thickness: 1,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      Text(
                        "or",
                        style: TextStyle(
                            color: Colors.grey, fontSize: width * 0.040),
                      ),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.green,
                          thickness: 1,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: height * 0.03),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  child: Container(
                    height: height * 0.1,
                    width: width,
                    child: FlatButton(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: Theme.of(context).cardColor,
                              width: 1,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              SlideRightRoute(page: InternationalRates()));
                        },
                        child: Text(
                          "Subscribe Monthly - \$500.00 ",
                          style: TextStyle(
                              color: Theme.of(context).cardColor,
                              fontSize: width * 0.045),
                        )),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Terms of Use",
                      style: TextStyle(
                        color: Theme.of(context).canvasColor,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    Text(
                      "Privacy Policy",
                      style: TextStyle(
                        color: Theme.of(context).canvasColor,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    Text(
                      "Restore",
                      style: TextStyle(
                        color: Theme.of(context).canvasColor,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
