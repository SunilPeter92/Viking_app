import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:viking/Widgets/CreditsBox.dart';
import 'package:viking/Widgets/MinutesAndTexts.dart';
import 'ChooseCountry.dart';
import 'package:viking/Animation/Slider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double width, height;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.07),
          child: Column(
            children: [
              SizedBox(
                height: height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Icon(Icons.settings, color: Colors.green)],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Phone Numbers",
                    style: TextStyle(
                      fontSize: width * 0.05,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: height * 0.05),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, SlideRightRoute(page: ChooseCountry()));
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: width * 0.03),
                            child: Text(
                              "Get a fixed Number",
                              style: TextStyle(
                                fontSize: width * 0.05,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: width * 0.03),
                            child: Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: height * 0.01),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: width * 0.03),
                            child: Text(
                              "Choose a number instead of using a random one",
                              style: TextStyle(
                                fontSize: width * 0.035,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.all(Radius.circular(25.0) //
                        ),
                  ),
                  height: height / 6,
                ),
              ),
              SizedBox(height: height * 0.05),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Your Balance",
                    style: TextStyle(
                      fontSize: width * 0.05,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: height * 0.05),
              Row(
                children: [
                  Creditbox(
                    credits: "0",
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  MinutesAndTexts(
                    minutes: "0",
                    text: "0",
                  ),
                ],
              ),
              SizedBox(height: height * 0.05),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "More",
                    style: TextStyle(
                      fontSize: width * 0.05,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: height * 0.05),
              Row(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(width * 0.03),
                          child: Row(
                            children: [
                              Icon(
                                Icons.help_outline_outlined,
                                color: Colors.green,
                                size: width * 0.09,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: height * 0.005),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(width * 0.03),
                              child: Text(
                                "Get Help",
                                style: TextStyle(
                                    fontSize: width * 0.04, color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    height: height * 0.14,
                    width: width / 2.5,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.all(Radius.circular(
                              15.0) //                 <--- border radius here
                          ),
                    ),
                  ),
                  SizedBox(width: width * 0.01),
                  Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(width * 0.03),
                          child: Row(
                            children: [
                              Icon(
                                Icons.lock_outline,
                                color: Colors.green,
                                size: width * 0.09,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: height * 0.005),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(width * 0.03),
                              child: Text(
                                "Install VPN Vault",
                                style: TextStyle(
                                    fontSize: width * 0.04, color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    height: height * 0.14,
                    width: width / 2.5,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.all(Radius.circular(
                              15.0) //                 <--- border radius here
                          ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      // bottomNavigationBar: new BottomNavigationBar(
      //     showUnselectedLabels: true,
      //     unselectedItemColor: Colors.grey,

      //     // new
      //     currentIndex: 0,
      //     fixedColor: Colors.green,
      //     items: [
      //       BottomNavigationBarItem(
      //         label: "Home",
      //         icon: new Icon(
      //           Icons.home_outlined,
      //         ),
      //       ),
      //       BottomNavigationBarItem(
      //         label: "Contacts",
      //         backgroundColor: Color(0xFF4E862D),
      //         icon: new Icon(
      //           Icons.people,
      //         ),
      //       ),
      //       BottomNavigationBarItem(
      //         label: "Phone",
      //         backgroundColor: Color(0xFF4E862D),
      //         icon: new Icon(
      //           Icons.phone,
      //         ),
      //       ),
      //       BottomNavigationBarItem(
      //         label: "Message",
      //         backgroundColor: Color(0xFF4E862D),
      //         icon: new Icon(
      //           Icons.chat,
      //         ),
      //       ),
      //     ]),
    );
  }
}
