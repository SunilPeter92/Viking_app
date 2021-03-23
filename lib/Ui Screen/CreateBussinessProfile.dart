import 'package:flutter/material.dart';

import '../Widgets/MyButtonRaised.dart';
import '../Ui Screen/AddAddress.dart';
import 'AddAddress.dart';
import '../Animation/Slider.dart';

class CreateBussinessProfile extends StatefulWidget {
  @override
  _CreateBussinessProfileState createState() => _CreateBussinessProfileState();
}

class _CreateBussinessProfileState extends State<CreateBussinessProfile> {
  double width, height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height * 0.09),
            Center(
              child: Text(
                "Step 1: Enter detail",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: height * 0.02),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Row(
                children: [
                  Text(
                    "First Name",
                    style: TextStyle(color: Theme.of(context).canvasColor),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: TextField(
                //autofocus: false,
                onEditingComplete: () {},
                onSubmitted: (v) {},

                textAlign: TextAlign.start,
                decoration: InputDecoration(hintText: ''),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, top: 5),
              child: Row(
                children: [
                  Text(
                    "Last Name",
                    style: TextStyle(color: Theme.of(context).canvasColor),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: TextField(
                //autofocus: false,
                onEditingComplete: () {},
                onSubmitted: (v) {},

                textAlign: TextAlign.start,
                decoration: InputDecoration(hintText: ''),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, top: 5),
              child: Row(
                children: [
                  Text(
                    "Nationality",
                    style: TextStyle(color: Theme.of(context).canvasColor),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: TextField(
                //autofocus: false,
                onEditingComplete: () {},
                onSubmitted: (v) {},

                textAlign: TextAlign.start,
                decoration: InputDecoration(hintText: ''),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, top: 5),
              child: Row(
                children: [
                  Text(
                    "Address ",
                    style: TextStyle(color: Theme.of(context).canvasColor),
                  ),
                ],
              ),
            ),
            ListTile(
              dense: true,
              onTap: () {
                Navigator.push(context, SlideRightRoute(page: AddAddress()));
              },
              leading: Text(
                "Not Selected",
                style: TextStyle(color: Theme.of(context).canvasColor),
              ),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
            Center(
              child: MyButtonRaised(
                onPressed: () {},
                title: "Next",
              ),
            )
          ],
        ),
      ),
    );
  }
}
