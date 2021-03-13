import 'package:flutter/material.dart';
import '../Animation/Slider.dart';
import '../Widgets/MyButtonRaised.dart';
import 'ProfileSelection.dart';

class IdentityOverView extends StatefulWidget {
  @override
  _IdentityOverViewState createState() => _IdentityOverViewState();
}

class _IdentityOverViewState extends State<IdentityOverView> {
  double width, height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
        child: ListView(
          children: [
            SizedBox(
              height: height * 0.03,
            ),
            Center(
              child: Text("Identity Verification ",
                  style: TextStyle(
                      fontSize: width * 0.060, fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: height * 0.06,
            ),
            Text("1. Enter details ",
                style: TextStyle(
                    fontSize: width * 0.060, fontWeight: FontWeight.bold)),
            SizedBox(
              height: height * 0.02,
            ),
            Text("2. Upload photos of documents ",
                style: TextStyle(
                    fontSize: width * 0.060, fontWeight: FontWeight.bold)),
            SizedBox(
              height: height * 0.02,
            ),
            Text("3. Submit for review ",
                style: TextStyle(
                    fontSize: width * 0.060, fontWeight: FontWeight.bold)),
            SizedBox(
              height: height * 0.05,
            ),
            Text(
                "Before you start, you man want to prepare documents like local ID, driver's license etc ",
                style: TextStyle(
                  fontSize: width * 0.050,
                )),
            SizedBox(
              height: height * 0.02,
            ),
            Text(
                "After submission, your info will be reviewed within 12-24 hours. ",
                style: TextStyle(
                  fontSize: width * 0.050,
                )),
            SizedBox(
              height: height * 0.02,
            ),
            Text("Estimated time to complete: 5-10 mins ",
                style: TextStyle(
                  fontSize: width * 0.050,
                )),
            SizedBox(
              height: height * 0.05,
            ),
            MyButtonRaised(
              title: "Lets go",
              onPressed: () {
                Navigator.push(
                    context, SlideRightRoute(page: ProfileSlection()));
              },
            )
          ],
        ),
      ),
    );
  }
}
