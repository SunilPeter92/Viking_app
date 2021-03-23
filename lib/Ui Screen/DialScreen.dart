import 'package:flutter/material.dart';
import 'CallScreen.dart';
import '../Animation/Slider.dart';
import 'InboxScreen.dart';
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
  List<String> nums = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "*",
    "0",
    "#"
  ];

  List<String> tags = [
    "",
    "ABC",
    "DEF",
    "GHI",
    "JKL",
    "MNO",
    "PQRS",
    "TUV",
    "WXYZ",
    "",
    "+",
    ""
  ];
  double width, height;
  var controller;
  TextEditingController textfield = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).cardColor,
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
              Navigator.push(context, SlideRightRoute(page: InBoxScreen()));
            },
            color: Colors.white,
            icon: Icon(
              Icons.message_rounded,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: height * 0.05,
            ),
            Center(
                child: Text(
              "Country Code with + is required",
              style: TextStyle(color: Theme.of(context).canvasColor),
            )),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                width: width / 1.6,
                child: TextField(
                  readOnly: true,
                  style: TextStyle(fontSize: width * 0.05, color: Colors.grey),
                  controller: textfield,
                ),
              ),
            ),
            Container(
              width: width / 1.4,
              height: height / 1.8,
              child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: this.nums.length,
                  itemBuilder: (context, index) {
                    return Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        SizedBox(
                          height: height * 0.11,
                          width: width * 0.35,
                          child: MaterialButton(
                            elevation: 0,
                            onLongPress: () {
                              if (nums[index] == "0") {
                                this.textfield.text += "+";
                              }
                            },
                            onPressed: () {
                              this.textfield.text += nums[index];
                            },
                            color: Theme.of(context).canvasColor,
                            textColor: Colors.white,
                            child: Text(
                              nums[index],
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                              ),
                            ),
                            shape: CircleBorder(),
                          ),
                        ),
                        Positioned(
                          bottom: height * 0.02,
                          child: Text(
                            tags[index],
                            style: TextStyle(
                                fontSize: width * 0.030, color: Colors.black),
                          ),
                        )
                      ],
                    );
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          SlideRightRoute(
                              page: CallScreen(
                            number: textfield.text,
                          )));
                    },
                    color: Theme.of(context).cardColor,
                    textColor: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Icon(
                        Icons.phone,
                      ),
                    ),
                    shape: CircleBorder(),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    if (this.textfield.text.isNotEmpty) {
                      String text = textfield.text;

                      print(text);
                      var list = text.split("");
                      print(list);
                      list.removeLast();
                      textfield.text = list.join();
                    }
                  },
                  icon: Icon(
                    Icons.backspace,
                    size: width * 0.09,
                    color: Theme.of(context).canvasColor,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.grey.shade900,
          child: ListView(
            children: [
              SizedBox(
                height: 30,
              ),
              Center(
                child: RaisedButton(
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text("Get one more number!"),
                  ),
                  color: Theme.of(context).cardColor,
                  onPressed: () {
                    Navigator.push(
                        context, SlideRightRoute(page: ActivateNumber()));
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                leading: Icon(
                  Icons.monetization_on_outlined,
                  size: 25,
                  color: Theme.of(context).canvasColor,
                ),
                title: Text(
                  "Balance",
                  style: textStyle(context),
                ),
                onTap: () {
                  Navigator.push(
                      context, SlideRightRoute(page: ActivateNumber()));
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.chat,
                  size: 25,
                  color: Theme.of(context).canvasColor,
                ),
                title: Text(
                  "Messages",
                  style: textStyle(context),
                ),
                onTap: () {
                  Navigator.push(context, SlideRightRoute(page: InBoxScreen()));
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.call,
                  size: 25,
                  color: Theme.of(context).canvasColor,
                ),
                title: Text(
                  "Keypad",
                  style: textStyle(context),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.call_missed,
                  size: 25,
                  color: Theme.of(context).canvasColor,
                ),
                title: Text(
                  "Recent",
                  style: textStyle(context),
                ),
                onTap: () {
                  Navigator.push(
                      context, SlideRightRoute(page: SearchContacts()));
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.person,
                  size: 25,
                  color: Theme.of(context).canvasColor,
                ),
                title: Text(
                  "Contacts",
                  style: textStyle(context),
                ),
                onTap: () {
                  Navigator.push(context, SlideRightRoute(page: Contacts()));
                },
              ),
              Divider(
                thickness: 3,
                color: Theme.of(context).canvasColor,
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  size: 25,
                  color: Theme.of(context).canvasColor,
                ),
                title: Text(
                  "Settings",
                  style: textStyle(context),
                ),
                onTap: () {
                  Navigator.push(context, SlideRightRoute(page: Settings()));
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.message,
                  size: 25,
                  color: Theme.of(context).canvasColor,
                ),
                title: Text(
                  "Send Feedback",
                  style: textStyle(context),
                ),
                onTap: () {
                  Navigator.push(context, SlideRightRoute(page: Settings()));
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.contact_support,
                  size: 25,
                  color: Theme.of(context).canvasColor,
                ),
                title: Text(
                  "Support",
                  style: textStyle(context),
                ),
                onTap: () {
                  Navigator.push(context, SlideRightRoute(page: Settings()));
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.info,
                  size: 25,
                  color: Theme.of(context).canvasColor,
                ),
                title: Text(
                  "Information",
                  style: textStyle(context),
                ),
                onTap: () {
                  Navigator.push(context, SlideRightRoute(page: Settings()));
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.exit_to_app_outlined,
                  size: 25,
                  color: Theme.of(context).canvasColor,
                ),
                title: Text(
                  "EPLGROUP",
                  style: textStyle(context),
                ),
                onTap: () {
                  Navigator.push(context, SlideRightRoute(page: Settings()));
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  footText(context, 'Voxbone'),
                  footText(context, 'Support'),
                  footText(context, 'Legal'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

textStyle(BuildContext context) {
  return TextStyle(color: Theme.of(context).canvasColor, fontSize: 20);
}

footText(BuildContext context, String text) {
  return Container(
      margin: EdgeInsets.only(right: 10, left: 10),
      child: Text(
        text,
        style: TextStyle(
          color: Theme.of(context).cardColor,
        ),
      ));
}
