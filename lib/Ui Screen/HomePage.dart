import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:launch_review/launch_review.dart';
import 'package:viking/Ui%20Screen/GetCredit.dart';
import 'package:viking/Ui%20Screen/IncreaseBalance.dart';
import 'package:viking/Ui%20Screen/Support.dart';
import 'RenewPhone.dart';
import 'package:viking/Widgets/CreditsBox.dart';
import 'package:viking/Widgets/MinutesAndTexts.dart';
import 'ChooseCountry.dart';
import 'package:viking/Animation/Slider.dart';
import 'Settings.dart';

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
      backgroundColor: Theme.of(context).accentColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.07),
          child: Column(
            children: [
              SizedBox(
                height: height * 0.05,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                IconButton(
                  icon: Icon(
                    Icons.settings,
                    color: Theme.of(context).cardColor,
                  ),
                  onPressed: () {
                    Navigator.push(context, SlideRightRoute(page: Settings()));
                  },
                )
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Phone Numbers",
                    style: TextStyle(
                      fontSize: width * 0.05,
                      color: Colors.white,
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
                            child: Container(
                              width: MediaQuery.of(context).size.width/1.25,
                              child: Text(
                                "Choose a number instead of using a random one",
                                maxLines: 2,
                                style: TextStyle(
                                  fontSize: width * 0.035,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
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
                        color: Theme.of(context).canvasColor),
                  ),
                ],
              ),
              SizedBox(height: height * 0.05),
              Row(
                children: [
                  Creditbox(
                    function: () {
                      Navigator.push(
                          context, SlideRightRoute(page: GetCredits()));
                    },
                    credits: "0",
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  MinutesAndTexts(
                    minutes: "0",
                    text: "0",
                    function: () {
                      Navigator.push(
                          context, SlideRightRoute(page: IncreaseBalance()));
                    },
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
                        color: Theme.of(context).canvasColor),
                  ),
                ],
              ),
              SizedBox(height: height * 0.05),
              Row(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context, SlideRightRoute(page: Support()));
                    },
                    child: Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(width * 0.03),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.help_outline_outlined,
                                  color: Colors.white,
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
                                      fontSize: width * 0.035,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      height: height * 0.15,
                      width: width / 2.5,
                      decoration: BoxDecoration(
                        color: Theme.of(context).cardColor,
                        borderRadius: BorderRadius.all(Radius.circular(
                                15.0) //                 <--- border radius here
                            ),
                      ),
                    ),
                  ),
                  SizedBox(width: width * 0.01),
                  InkWell(
                    onTap: (){
                      LaunchReview.launch(androidAppId: "com.jrzheng.supervpnfree",
                          iOSAppId: "284882215");
                    },
                    child: Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(width * 0.03),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.lock_outline,
                                  color: Colors.white,
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
                                      fontSize: width * 0.035,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      height: height * 0.15,
                      width: width / 2.5,
                      decoration: BoxDecoration(
                        color: Theme.of(context).cardColor,
                        borderRadius: BorderRadius.all(Radius.circular(
                                15.0) //                 <--- border radius here
                            ),
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
