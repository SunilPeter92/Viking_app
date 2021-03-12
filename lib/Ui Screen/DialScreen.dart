import 'package:flutter/material.dart';
import 'package:flutter_dialpad_plus/flutter_dialpad_plus.dart';

import '../Animation/Slider.dart';
import 'Contacts.dart';
import 'RecentCalls.dart';
import 'SearchContacts.dart';
import 'Settings.dart';
import 'MessageScreen.dart';
import 'ActivateNumerScreen.dart';

class DialScreen extends StatefulWidget {
  @override
  _DialScreenState createState() => _DialScreenState();
}

class _DialScreenState extends State<DialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("Keypad", style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, SlideRightRoute(page: RecentCalls()));
            },
            color: Colors.white,
            icon: Icon(
              Icons.person_rounded,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context, SlideRightRoute(page: MessageScreen()));
            },
            color: Colors.white,
            icon: Icon(
              Icons.message_rounded,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Center(
              child: Text(
            "Country Code with + is required",
            style: TextStyle(color: Colors.grey),
          )),
          DialPad(
              keyPadColor: Colors.white,
              keyPadTextColor: Colors.black,
              outputMask: //Visual formatting of input
                  "0000 000 00 00", //Here you can mask the display of inserted number. unformatted text won't show up.
              dialButtonColor: Colors.white,
              dialButtonIconColor: Colors.orange,
              buttonIcon: Icons.phone,
              enableDtmf: true,
              backspaceButtonIconColor: Colors.black,
              useNumber: (number) {
                //use this `number` variable for any reference or implementation.
                print(number);
              }),
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
              SizedBox(
                height: 30,
              ),
              ListTile(
                leading: Icon(Icons.add),
                title: Text("Activate Number"),
                onTap: () {
                  Navigator.push(
                      context, SlideRightRoute(page: ActivateNumber()));
                },
              ),
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
