import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:viking/Ui%20Screen/DialScreen.dart';
import 'package:viking/Ui%20Screen/SearchContacts.dart';
import 'package:viking/Ui%20Screen/NewMessegePage.dart';
import '../API/Api Class.dart';
import '../Animation/Slider.dart';
import 'MessageScreen.dart';
import '../Model/Inbox.dart';

class InBoxScreen extends StatefulWidget {
  @override
  _InBoxScreenState createState() => _InBoxScreenState();
}

class _InBoxScreenState extends State<InBoxScreen> {
  List<Inbox> inboxList=[];
  getInboxList() {
    API.getInboxes().then((response) {
      setState(() {
        Iterable list = json.decode(response.body);
        inboxList = list.map((model) => Inbox.fromJson(model)).toList();
      });
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getInboxList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).cardColor,
        leading: BackButton(
          color: Colors.white,
        ),
        title: Text(
          "Inbox Screen",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          // action button
          IconButton(
            icon: Icon( Icons.add_circle_outline_outlined ),
            onPressed: () {
              Navigator.push(context, SlideRightRoute(page: NewMessegeScreen()));
            },
          ),

        ],

      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: inboxList.length,
          itemBuilder: (ct,i){
            return Card(
              margin: EdgeInsets.only(
                top: 10,
                bottom: 10,
                right: 20,
                left: 20,
              ),
              color: Colors.white,
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context, SlideRightRoute(page: MessageScreen(number: 'Reyan',)));
                },
                trailing: Text(
                  "4:45 pm",
                  style: TextStyle(fontSize: 15),
                ),
                leading: CircleAvatar(
                  radius: 25,
                  child: ClipOval(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child:
                      Image.network("http://www.gravatar.com/avatar/?d=mp"),
                    ),
                  ),
                ),
                title: Text(
                  inboxList[i].to,
                  style: TextStyle(fontSize: 15),
                ),
              ),
            );
          },

        ),
      ),
    );
  }
}


