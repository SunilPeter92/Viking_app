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
              style: TextStyle(color: Colors.grey),
            )),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                width: width / 1.6,
                child: TextField(
                  readOnly: true,
                  style: TextStyle(fontSize: width * 0.05),
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
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 2,
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
                            color: Colors.white,
                            textColor: Colors.white,
                            child: Text(
                              nums[index],
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            ),
                            shape: CircleBorder(),
                          ),
                        ),
                        Positioned(
                          bottom: height * 0.02,
                          child: Text(
                            tags[index],
                            style: TextStyle(
                                fontSize: width * 0.030, color: Colors.grey),
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
                    color: Colors.orange,
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
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: Container(
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
                  color: Colors.orange,
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
                leading: Icon(Icons.monetization_on_outlined),
                title: Text("Balance"),
                onTap: () {
                  Navigator.push(
                      context, SlideRightRoute(page: ActivateNumber()));
                },
              ),
              ListTile(
                leading: Icon(Icons.chat),
                title: Text("Messages"),
                onTap: () {
                  Navigator.push(context, SlideRightRoute(page: InBoxScreen()));
                },
              ),
              ListTile(
                leading: Icon(Icons.call),
                title: Text("Keypad"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.call_missed),
                title: Text("Recent"),
                onTap: () {
                  Navigator.push(
                      context, SlideRightRoute(page: SearchContacts()));
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Contacts"),
                onTap: () {
                  Navigator.push(context, SlideRightRoute(page: Contacts()));
                },
              ),
              Divider(
                thickness: 3,
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                onTap: () {
                  Navigator.push(context, SlideRightRoute(page: Settings()));
                },
              ),
              ListTile(
                leading: Icon(Icons.message),
                title: Text("Send Feedback"),
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
