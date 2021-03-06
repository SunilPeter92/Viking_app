import 'package:flutter/material.dart';
import '../Ui Screen/CreateBussinessProfile.dart';
import '../Animation/Slider.dart';
import 'CreateIndividualProfile.dart';

class ProfileSlection extends StatefulWidget {
  @override
  _ProfileSlectionState createState() => _ProfileSlectionState();
}

class _ProfileSlectionState extends State<ProfileSlection> {
  double width, height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).cardColor,
        leading: BackButton(
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.02),
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30, bottom: 50),
              child: Center(
                child: Text(
                  "Step 1: Create new profile",
                  style: TextStyle(
                      color: Theme.of(context).canvasColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Card(
                margin: EdgeInsets.only(top: 7, bottom: 7, right: 10, left: 10),
                color: Theme.of(context).cardColor,
                child: ListTile(
                  onTap: () {
                    Navigator.push(context,
                        SlideRightRoute(page: CreateIndividualProfile()));
                  },
                  leading: Text(
                    "I am an individual entity",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.white,
                    size: 15,
                  ),
                )),
            Card(
                margin: EdgeInsets.only(top: 7, bottom: 7, right: 10, left: 10),
                color: Theme.of(context).cardColor,
                child: ListTile(
                  onTap: () {
                    Navigator.push(context,
                        SlideRightRoute(page: CreateBussinessProfile()));
                  },
                  leading: Text(
                    "I am an business entity",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios_outlined,
                      size: 15, color: Colors.white),
                )),
          ],
        ),
      ),
    );
  }
}
