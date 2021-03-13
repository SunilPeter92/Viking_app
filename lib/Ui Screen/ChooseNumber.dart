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
      appBar: AppBar(
        title: Text("Choose Number", style: TextStyle(color: Colors.white)),
        leading: BackButton(
          color: Colors.white,
        ),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              leading: Text(
                "+1 205-548-4393",
                style: TextStyle(
                  color: Colors.grey,
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
                color: Colors.orange,
                size: 30,
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Text(
                "+1 205-548-4393",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              onTap: () {
                Navigator.push(
                    context, SlideRightRoute(page: IdentityVerification()));
              },
              trailing: Icon(
                Icons.arrow_forward_rounded,
                color: Colors.orange,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
