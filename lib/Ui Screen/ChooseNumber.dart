import 'package:flutter/material.dart';
import '../Animation/Slider.dart';
import 'OfferScreen.dart';
import 'IdentityVerification.dart';

class ChooseNumber extends StatefulWidget {
  String countryname;
  ChooseNumber({@required this.countryname});
  @override
  _ChooseNumberState createState() => _ChooseNumberState();
}

class _ChooseNumberState extends State<ChooseNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).cardColor,
        title: Text("Choose Number", style: TextStyle(color: Colors.white)),
        leading: BackButton(
          color: Colors.white,
        ),
      ),
      body: ListView(
        children: [
          Card(
            margin: EdgeInsets.only(
              top: 10,
              bottom: 10,
              left: 20,
              right: 20,
            ),
            color: Colors.white,
            child: ListTile(
              leading: Text(
                "+1 205-548-4393",
                style: TextStyle(
                  color: Theme.of(context).canvasColor,
                  fontSize: 18,
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    SlideRightRoute(
                        page: OfferScreen(
                      countryname: widget.countryname,
                      number: "+ 12313214546",
                    )));
              },
              trailing: Icon(
                Icons.arrow_forward_rounded,
                color: Theme.of(context).cardColor,
                size: 25,
              ),
            ),
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.only(
              top: 10,
              bottom: 10,
              left: 20,
              right: 20,
            ),
            child: ListTile(
              leading: Text(
                "+1 205-548-4393",
                style: TextStyle(
                    color: Theme.of(context).canvasColor, fontSize: 18),
              ),
              onTap: () {
                Navigator.push(
                    context, SlideRightRoute(page: IdentityVerification()));
              },
              trailing: Icon(
                Icons.arrow_forward_rounded,
                color: Theme.of(context).cardColor,
                size: 25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
