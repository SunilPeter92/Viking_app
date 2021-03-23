import 'package:flutter/material.dart';
import '../Ui Screen/IncreaseBalance.dart';
import '../Animation/Slider.dart';

class ExtendsCredits extends StatefulWidget {
  @override
  _ExtendsCreditsState createState() => _ExtendsCreditsState();
}

class _ExtendsCreditsState extends State<ExtendsCredits> {
  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).cardColor,
        title: Text("Phone Number ", style: TextStyle(color: Colors.white)),
        leading: BackButton(
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(screenwidth * 0.05),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Theme.of(context).cardColor,
                child: Container(
                  width: screenwidth,
                  height: screenheight * 0.15,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 20,
                          right: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Renew Number \n using Credits",
                              style: TextStyle(
                                  fontSize: screenwidth * 0.05,
                                  color: Colors.white),
                            ),
                            Text(
                              "0",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: screenwidth * 0.08,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            RaisedButton(
                              elevation: 10,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              color: Colors.white,
                              child: Text(
                                "Get More",
                                style: TextStyle(
                                    color: Theme.of(context).cardColor),
                              ),
                              onPressed: () {
                                Navigator.push(context,
                                    SlideRightRoute(page: IncreaseBalance()));
                              },
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screenheight * 0.05,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "RENEW FOR 1 MONTH",
                    style: TextStyle(
                        color: Theme.of(context).canvasColor,
                        fontSize: screenwidth * 0.055),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Container(
                child: Padding(
                  padding: EdgeInsets.only(left: screenwidth * 0.02),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "20",
                            style: TextStyle(
                              fontSize: screenwidth * 0.055,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Texts",
                            style: TextStyle(
                                fontSize: screenwidth * 0.035,
                                color: Colors.white),
                          ),
                          Container(
                            height: 9,
                            width: screenwidth * 0.15,
                            decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                          )
                        ],
                      ),
                      SizedBox(
                        width: screenwidth * 0.17,
                      ),
                      Row(
                        children: [
                          Text(
                            "3000" + " credits\n      needed",
                            style: TextStyle(
                                fontSize: screenwidth * 0.035,
                                color: Colors.white),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: screenwidth * 0.02),
                            child: SizedBox(
                              height: screenheight * 0.09,
                              width: screenwidth * 0.25,
                              child: FlatButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      side: BorderSide(
                                          color: Theme.of(context).cardColor)),
                                  color: Colors.white,
                                  child: Text(
                                    "Extend",
                                    style: TextStyle(
                                      fontSize: screenwidth * 0.05,
                                      color: Theme.of(context).cardColor,
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        SlideRightRoute(
                                            page: IncreaseBalance()));
                                  }),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                width: screenwidth * 0.85,
                height: screenheight * 0.15,
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      topRight: Radius.circular(15.0)),
                ),
              ),
            ),
            Container(
              width: screenwidth * 0.85,
              child: Divider(
                color: Colors.black,
                height: 2,
                thickness: 2,
              ),
            ),
            Container(
              child: Container(
                child: Padding(
                  padding: EdgeInsets.only(left: screenwidth * 0.02),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "20",
                                style: TextStyle(
                                    fontSize: screenwidth * 0.055,
                                    color: Colors.white),
                              ),
                              Text(
                                "Texts",
                                style: TextStyle(
                                    fontSize: screenwidth * 0.035,
                                    color: Colors.white),
                              ),
                              Container(
                                height: 9,
                                width: screenwidth * 0.15,
                                decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: screenwidth * 0.02),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "20",
                                  style: TextStyle(
                                      fontSize: screenwidth * 0.055,
                                      color: Colors.white),
                                ),
                                Text(
                                  "Texts",
                                  style: TextStyle(
                                      fontSize: screenwidth * 0.035,
                                      color: Colors.white),
                                ),
                                Container(
                                  height: 9,
                                  width: screenwidth * 0.15,
                                  decoration: BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "3000" + " credits\n      needed",
                            style: TextStyle(
                                fontSize: screenwidth * 0.035,
                                color: Colors.white),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: screenwidth * 0.02),
                            child: SizedBox(
                              height: screenheight * 0.09,
                              width: screenwidth * 0.25,
                              child: FlatButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      side: BorderSide(
                                          color:
                                              Theme.of(context).primaryColor)),
                                  color: Colors.white,
                                  child: Text(
                                    "Extend",
                                    style: TextStyle(
                                      fontSize: screenwidth * 0.05,
                                      color: Theme.of(context).cardColor,
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        SlideRightRoute(
                                            page: IncreaseBalance()));
                                  }),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                width: screenwidth * 0.85,
                height: screenheight * 0.15,
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(15.0),
                      bottomLeft: Radius.circular(15.0)),
                ),
              ),
            ),
            SizedBox(
              height: screenheight * 0.02,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "RENEWS FOR 3 MONTH",
                    style: TextStyle(
                        color: Theme.of(context).canvasColor,
                        fontSize: screenwidth * 0.055),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: screenheight * 0.02,
            ),
            Container(
              child: Container(
                child: Padding(
                  padding: EdgeInsets.only(left: screenwidth * 0.02),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "50",
                                style: TextStyle(
                                  fontSize: screenwidth * 0.055,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Texts",
                                style: TextStyle(
                                  fontSize: screenwidth * 0.035,
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                height: 9,
                                width: screenwidth * 0.15,
                                decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: screenwidth * 0.02),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "50",
                                  style: TextStyle(
                                    fontSize: screenwidth * 0.055,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "Texts",
                                  style: TextStyle(
                                      fontSize: screenwidth * 0.035,
                                      color: Colors.white),
                                ),
                                Container(
                                  height: 9,
                                  width: screenwidth * 0.15,
                                  decoration: BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "3000" + " credits\n      needed",
                            style: TextStyle(
                              fontSize: screenwidth * 0.035,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: screenwidth * 0.02),
                            child: SizedBox(
                              height: screenheight * 0.09,
                              width: screenwidth * 0.25,
                              child: FlatButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      side: BorderSide(
                                          color:
                                              Theme.of(context).primaryColor)),
                                  color: Colors.white,
                                  child: Text(
                                    "Extend",
                                    style: TextStyle(
                                      fontSize: screenwidth * 0.05,
                                      color: Theme.of(context).cardColor,
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        SlideRightRoute(
                                            page: IncreaseBalance()));
                                  }),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                width: screenwidth * 0.85,
                height: screenheight * 0.15,
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
