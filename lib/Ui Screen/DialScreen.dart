import 'package:flutter/material.dart';

import '../Animation/Slider.dart';
import 'Contacts.dart';
import 'RecentCalls.dart';
import 'SearchContacts.dart';
import 'Settings.dart';

class DialScreen extends StatefulWidget {
  @override
  _DialScreenState createState() => _DialScreenState();
}

class _DialScreenState extends State<DialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("Keypad", style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            onPressed: () {},
            color: Colors.white,
            icon: Icon(
              Icons.person_rounded,
            ),
          ),
          IconButton(
            onPressed: () {},
            color: Colors.white,
            icon: Icon(
              Icons.message_rounded,
            ),
          )
        ],
      ),
      // body: SafeArea(
      //     child: DialPad(
      //         backspaceButtonIconColor: Colors.black,
      //         buttonColor: Colors.white,
      //         buttonTextColor: Colors.black,
      //         makeCall: (number) {
      //           print("number : " + number);
      //         })

      //         ),
      drawer: Drawer(
        child: Container(
          child: ListView(
            children: [
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Contacts"),
                onTap: () {
                  Navigator.push(context, SlideRightRoute(page: Contacts()));
                },
              ),
              ListTile(
                leading: Icon(Icons.call),
                title: Text("Calls"),
                onTap: () {
                  Navigator.push(context, SlideRightRoute(page: RecentCalls()));
                },
              ),
              ListTile(
                leading: Icon(Icons.search),
                title: Text("Search Contact"),
                onTap: () {
                  Navigator.push(
                      context, SlideRightRoute(page: SearchContacts()));
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                onTap: () {
                  Navigator.push(context, SlideRightRoute(page: Settings()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
