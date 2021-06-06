import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Support extends StatefulWidget {
  const Support({Key key}) : super(key: key);

  @override
  _SupportState createState() => _SupportState();
}

class _SupportState extends State<Support> {
  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).cardColor,
        title: Text("Support ", style: TextStyle(color: Colors.white)),
        leading: BackButton(
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: screenheight * 0.05,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text(
                    "HELP AND SUPPORT",
                    style: TextStyle(
                        color: Theme.of(context).canvasColor,
                        fontSize: screenwidth * 0.04),
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: _launchEmail,
              child: Padding(
                padding: EdgeInsets.all(screenwidth * 0.05),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  color: Theme.of(context).cardColor,
                  child: Container(
                    width: screenwidth * 0.85,
                    height: screenheight * 0.09,
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
                                "Get Help",
                                style: TextStyle(
                                    fontSize: screenwidth * 0.05,
                                    color: Colors.white),
                              ),
                              Spacer(),
                              Icon(Icons.arrow_forward , color: Colors.white,)
                            ],
                          ),
                        ),
                      ],
                    ),
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
                  padding: EdgeInsets.only(left: 30),
                  child: Text(
                    "ABOUT",
                    style: TextStyle(
                        color: Theme.of(context).canvasColor,
                        fontSize: screenwidth * 0.04),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: screenwidth * 0.05 , right:  screenwidth * 0.05 , top:  screenwidth * 0.05),
              child: InkWell(
                onTap: _launchURL,
                child: Container(

                  width: screenwidth * 0.85,
                  height: screenheight * 0.09,
                  decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10),)
                  ),
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
                              "Privacy",
                              style: TextStyle(
                                  fontSize: screenwidth * 0.05,
                                  color: Colors.white),
                            ),
                            Spacer(),
                            Icon(Icons.arrow_forward , color: Colors.white,)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: _launchURL,
              child: Container(

                width: screenwidth * 0.85,
                height: screenheight * 0.09,
                decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10),)
                ),
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
                            "Terms",
                            style: TextStyle(
                                fontSize: screenwidth * 0.05,
                                color: Colors.white),
                          ),
                          Spacer(),
                          Icon(Icons.arrow_forward , color: Colors.white,)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: screenheight * 0.02,
            ),
          ],
        ),
      ),
    );
  }
  _launchEmail() async {
    launch(
        "mailto:reyana015@gmail.com?subject=TestEmail&body=How are you%20plugin");
  }
  _launchURL() async {
    const url = 'https://flutter.io';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
