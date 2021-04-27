import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:viking/API/Api%20Class.dart';
import 'package:viking/Animation/Slider.dart';
import 'package:viking/Model/GetCountryModel.dart';
import 'package:viking/Ui%20Screen/SelectState.dart';
import 'package:viking/Widgets/CountryListCard.dart';

class MyListScreen extends StatefulWidget {
  @override
  createState() => _MyListScreenState();
}

class _MyListScreenState extends State {
  var users = new List<GetCountryModel>();

  _getUsers() {
    API.getUsers().then((response) {
      setState(() {
        Iterable list = json.decode(response.body);
        users = list.map((model) => GetCountryModel.fromJson(model)).toList();
      });
    });
  }

  initState() {
    super.initState();
    _getUsers();
  }

  dispose() {
    super.dispose();
  }

  @override
  build(context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("User List"),
        ),
        body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
             return CountryCard(
              // countrycode: "+1",
              countrycode: users[index].cData.phonecode,
              countryname: users[index].cData.name,
              flag: users[index].fData,
              calls: true,
              mms: true,
              sms: true,
              function: () {
                Navigator.push(
                    context,
                    SlideRightRoute(
                        page: SelectState(
                          isIdRequired: false,
                          countryname: "USA",
                          isAdressRequired: false,
                        )));
              },
            );
          },
        ));
  }
}