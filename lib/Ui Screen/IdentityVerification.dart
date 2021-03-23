import 'package:flutter/material.dart';
import '../Widgets/MyButtonRaised.dart';
import 'IdentityOverview.dart';
import '../Animation/Slider.dart';

class IdentityVerification extends StatefulWidget {
  @override
  _IdentityVerificationState createState() => _IdentityVerificationState();
}

class _IdentityVerificationState extends State<IdentityVerification> {
  double width, height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
        child: Column(
          children: [
            SizedBox(
              height: width * 0.4,
            ),
            Center(
              child: Text("Identity Verification ",
                  style: TextStyle(
                      // color: Theme.of(context).canvasColor,
                      color: Colors.white,
                      fontSize: width * 0.060,
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: width * 0.1,
            ),
            Text("Some countries require identity verification by law.",
                style: TextStyle(
                    fontSize: width * 0.045,
                    color: Theme.of(context).canvasColor)),
            Text("Some countries require identity verification by law.",
                style: TextStyle(
                  color: Theme.of(context).canvasColor,
                  fontSize: width * 0.045,
                )),
            SizedBox(
              height: width * 0.2,
            ),
            Row(
              children: [
                Text("See: ",
                    style: TextStyle(
                        fontSize: width * 0.045, color: Colors.white)),
                Text("Regulatory Compliance Privacy and FAQ",
                    style: TextStyle(
                      color: Theme.of(context).cardColor,
                      fontSize: width * 0.045,
                    )),
              ],
            ),
            MyButtonRaised(
              title: "Next",
              onPressed: () {
                Navigator.push(
                    context, SlideRightRoute(page: IdentityOverView()));
              },
            )
          ],
        ),
      ),
    );
  }
}
