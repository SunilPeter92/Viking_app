import 'package:flutter/material.dart';

import '../Widgets/MyButtonRaised.dart';
import 'RenewPhone.dart';
import '../Animation/Slider.dart';
import 'ExtendCredits.dart';
import './AddAddress.dart';

class OfferScreen extends StatefulWidget {
  String number;
  String countryname;
  OfferScreen({@required this.number, @required this.countryname});
  @override
  _OfferScreenState createState() => _OfferScreenState();
}

class _OfferScreenState extends State<OfferScreen> {
  final controller = PageController(viewportFraction: 0.8);

  double width, height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            "Get " + widget.number,
            style: TextStyle(
                color: Theme.of(context).canvasColor, fontSize: width * 0.055),
          )),
          SizedBox(
            height: 5,
          ),
          Center(
              child: Text(
            widget.countryname,
            style: TextStyle(
                color: Theme.of(context).canvasColor, fontSize: width * 0.04),
          )),
          SizedBox(
            height: height * 0.1,
          ),
          Divider(),
          Center(
              child: Text(
            "Get a Limited Timer offer. Cancel.",
            style: TextStyle(
                color: Theme.of(context).canvasColor, fontSize: width * 0.045),
          )),
          Center(
              child: Text(
            "anytime.",
            style: TextStyle(
                color: Theme.of(context).canvasColor, fontSize: width * 0.045),
          )),
          SizedBox(
            height: height * 0.02,
          ),
          Center(
              child: Text(
            "Also includes 500 minutes per month, 1000 texts per month,",
            style: TextStyle(color: Colors.grey, fontSize: width * 0.035),
          )),
          Center(
              child: Text(
            "free premium lookups",
            style: TextStyle(color: Colors.grey, fontSize: width * 0.035),
          )),
          Center(
            child: MyButtonRaised(
              onPressed: () {
                Navigator.push(context, SlideRightRoute(page: AddAddress()));
              },
              title: "Rs 1,600.000 per month",
            ),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, SlideRightRoute(page: ExtendsCredits()));
            },
            child: Center(
                child: Text(
              "No thanks, I prefer to use credtis",
              style: TextStyle(
                  color: Theme.of(context).cardColor, fontSize: width * 0.033),
            )),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Divider(),
          Center(
              child: Text(
            "Auto renews monthly, Autho renews within 24 hours before",
            style: TextStyle(
                color: Theme.of(context).canvasColor, fontSize: width * 0.033),
          )),
          Center(
              child: Text(
            "subscriptions Settings. Payment will be chaged to your",
            style: TextStyle(
                color: Theme.of(context).canvasColor, fontSize: width * 0.033),
          )),
          Center(
              child: Text(
            "Google Play account upon confirmation",
            style: TextStyle(
                color: Theme.of(context).canvasColor, fontSize: width * 0.033),
          )),
          SizedBox(
            height: height * 0.01,
          ),
          Center(
              child: Text(
            "Terms | Privacy",
            style: TextStyle(
                color: Theme.of(context).canvasColor, fontSize: width * 0.033),
          )),
        ],
      ),
    );
  }
}
