import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:viking/Widgets/CountryListCard.dart';
import 'package:viking/Animation/Slider.dart';
import 'ActivateNumerScreen.dart';

class ChooseCountry extends StatefulWidget {
  @override
  _ChooseCountryState createState() => _ChooseCountryState();
}

class _ChooseCountryState extends State<ChooseCountry> {
  double width, height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        title: Text(
          "Choose Country",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.close,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          CountryCard(
            countrycode: "+1",
            countryname: "USA",
            flag: "US",
            function: () {
              Navigator.push(context, SlideRightRoute(page: ActivateNumber()));
            },
          ),
          CountryCard(
            countrycode: "+1",
            countryname: "Canada",
            flag: "ca",
            function: () {
              Navigator.push(context, SlideRightRoute(page: ActivateNumber()));
            },
          ),
          CountryCard(
            countrycode: "+44",
            countryname: "United Kingdom",
            flag: "gb",
            function: () {
              Navigator.push(context, SlideRightRoute(page: ActivateNumber()));
            },
          ),
          CountryCard(
            countrycode: "+61",
            countryname: "Austrailia",
            flag: "au",
            function: () {
              Navigator.push(context, SlideRightRoute(page: ActivateNumber()));
            },
          ),
          CountryCard(
            countrycode: "+43",
            countryname: "Austira",
            flag: "at",
            function: () {
              Navigator.push(context, SlideRightRoute(page: ActivateNumber()));
            },
          ),
          CountryCard(
            countrycode: "+32",
            countryname: "Belgium",
            flag: "be",
            function: () {
              Navigator.push(context, SlideRightRoute(page: ActivateNumber()));
            },
          ),
          CountryCard(
            countrycode: "+55",
            countryname: "Brazil",
            flag: "br",
            function: () {
              Navigator.push(context, SlideRightRoute(page: ActivateNumber()));
            },
          )
        ],
      ),
    );
  }
}
