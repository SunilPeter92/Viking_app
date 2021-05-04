import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class RenewPhone extends StatefulWidget {
  @override
  _RenewPhoneState createState() => _RenewPhoneState();
}

class _RenewPhoneState extends State<RenewPhone> {
  double screenwidth, screenheight;
  var screenPickerColor = Colors.white;
  var status = false;

  List<Color> colors = [
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white
  ];
  List<Color> borders = [
    Colors.orange,
    Colors.purple,
    Colors.green,
    Colors.brown,
    Colors.red
  ];
  @override
  Widget build(BuildContext context) {
    screenwidth = MediaQuery.of(context).size.width;
    screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).cardColor,
        title: Text("Phone Number", style: TextStyle(color: Colors.white)),
        leading: BackButton(
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenwidth * 0.07),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(screenwidth * 0.05),
                    child: Text(
                      "Supports calling, SMS & MMS",
                      style: TextStyle(
                          fontSize: screenwidth * 0.045,
                          color: Colors.grey[600]),
                    ),
                  ),
                ],
              ),
              Divider(thickness: 1, color: Colors.grey[600]),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(screenwidth * 0.04),
                    child: Text(
                      "Expire : Feb 02, 12:00 PM",
                      style: TextStyle(
                          fontSize: screenwidth * 0.043,
                          color: Colors.grey[600]),
                    ),
                  ),
                  SizedBox(
                    height: screenheight * 0.07,
                    width: screenwidth * 0.25,
                    child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                            side: BorderSide(
                                color: Theme.of(context).primaryColor)),
                        color: Theme.of(context).cardColor,
                        child: Text(
                          "Extend",
                          style: TextStyle(
                              fontSize: screenwidth * 0.04,
                              color: Colors.white),
                        ),
                        onPressed: () {}),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(thickness: 1, color: Colors.grey[600]),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(screenwidth * 0.05),
                    child: Text(
                      "CHANGE COLOR",
                      style: TextStyle(
                          fontSize: screenwidth * 0.045,
                          color: Colors.grey[600]),
                    ),
                  ),
                ],
              ),
              Container(
                decoration: new BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                    color: Colors.grey[100]),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ColorIndicator(
                        onSelect: () {
                          if (colors[0] == Colors.white) {
                            for (int i = 0; i < colors.length; i++) {
                              colors[i] = Colors.white;
                            }
                            colors[0] = borders[0];
                            setState(() {});
                          } else {
                            setState(() {
                              colors[0] = Colors.white;
                            });
                          }
                        },
                        width: 44,
                        height: 44,
                        borderRadius: 25,
                        borderColor: borders[0],
                        hasBorder: true,
                        color: colors[0],
                      ),
                      ColorIndicator(
                        onSelect: () {
                          if (colors[1] == Colors.white) {
                            for (int i = 0; i < colors.length; i++) {
                              colors[i] = Colors.white;
                            }
                            colors[1] = borders[1];
                            setState(() {});
                          } else {
                            setState(() {
                              colors[1] = Colors.white;
                            });
                          }
                        },
                        width: 44,
                        height: 44,
                        borderRadius: 25,
                        borderColor: borders[1],
                        hasBorder: true,
                        color: colors[1],
                      ),
                      ColorIndicator(
                        onSelect: () {
                          if (colors[2] == Colors.white) {
                            for (int i = 0; i < colors.length; i++) {
                              colors[i] = Colors.white;
                            }
                            colors[2] = borders[2];
                            setState(() {});
                          } else {
                            setState(() {
                              colors[2] = Colors.white;
                            });
                          }
                        },
                        width: 44,
                        height: 44,
                        borderRadius: 25,
                        borderColor: borders[2],
                        hasBorder: true,
                        color: colors[2],
                      ),
                      ColorIndicator(
                        onSelect: () {
                          if (colors[3] == Colors.white) {
                            for (int i = 0; i < colors.length; i++) {
                              colors[i] = Colors.white;
                            }
                            colors[3] = borders[3];
                            setState(() {});
                          } else {
                            setState(() {
                              colors[3] = Colors.white;
                            });
                          }
                        },
                        width: 44,
                        height: 44,
                        borderRadius: 25,
                        borderColor: borders[3],
                        hasBorder: true,
                        color: colors[3],
                      ),
                      ColorIndicator(
                        onSelect: () {
                          if (colors[4] == Colors.white) {
                            for (int i = 0; i < colors.length; i++) {
                              colors[i] = Colors.white;
                            }
                            colors[4] = borders[4];
                            setState(() {});
                          } else {
                            setState(() {
                              colors[4] = Colors.white;
                            });
                          }
                        },
                        width: 44,
                        height: 44,
                        borderRadius: 25,
                        borderColor: borders[4],
                        hasBorder: true,
                        color: colors[4],
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(screenwidth * 0.05),
                    child: Text(
                      "CALL SETTINGS",
                      style: TextStyle(
                          fontSize: screenwidth * 0.045,
                          color: Colors.grey[600]),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenheight * 0.05,
              ),
              Container(
                width: screenwidth * 0.9,
                height: screenheight * 0.14,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0), //
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(screenheight * 0.02),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("Forwarding / Voice Mail",
                              style: TextStyle(
                                  fontSize: screenwidth * 0.04,
                                  color: Colors.grey[900]))
                        ],
                      ),
                      SizedBox(
                        height: screenheight * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Set up call fowarding or \n voicemail",
                              style: TextStyle(
                                  fontSize: screenwidth * 0.03,
                                  color: Colors.grey[500])),
                          Row(
                            children: [
                              Text("Default",
                                  style: TextStyle(
                                      fontSize: screenwidth * 0.033,
                                      color: Colors.grey[500])),
                              Icon(
                                Icons.arrow_forward,
                                color: Theme.of(context).cardColor,
                                size: screenwidth * 0.07,
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                child: Divider(
                  height: 1,
                  color: Colors.black,
                ),
              ),
              Container(
                width: screenwidth * 0.9,
                height: screenheight * 0.14,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0), //
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(screenheight * 0.02),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("Record Phone Call",
                              style: TextStyle(
                                  fontSize: screenwidth * 0.04,
                                  color: Colors.black))
                        ],
                      ),
                      SizedBox(
                        height: screenheight * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Turn On to record phone calls",
                              style: TextStyle(
                                  fontSize: screenwidth * 0.03,
                                  color: Colors.grey[500])),
                          FlutterSwitch(
                            activeColor: Theme.of(context).cardColor,
                            width: screenwidth * 0.13,
                            height: screenheight * 0.034,
                            valueFontSize: 0,
                            toggleSize: screenwidth * 0.060,
                            value: status,
                            borderRadius: 15.0,
                            padding: 4.0,
                            showOnOff: true,
                            onToggle: (val) {
                              setState(() {
                                status = val;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),


              SizedBox(
                height: screenheight * 0.05,
              ),
              Container(
                width: screenwidth * 0.9,
                height: screenheight * 0.14,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0), //
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(screenheight * 0.02),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("Do Not Distrub",
                              style: TextStyle(
                                  fontSize: screenwidth * 0.04,
                                  color: Colors.grey[900]))
                        ],
                      ),
                      SizedBox(
                        height: screenheight * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Hide Notification for calls and texts",
                              style: TextStyle(
                                  fontSize: screenwidth * 0.03,
                                  color: Colors.grey[500])),
                          Row(
                            children: [
                              Text("Default",
                                  style: TextStyle(
                                      fontSize: screenwidth * 0.033,
                                      color: Colors.grey[500])),
                              Icon(
                                Icons.arrow_forward,
                                color: Theme.of(context).cardColor,
                                size: screenwidth * 0.07,
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                child: Divider(
                  height: 1,
                  color: Colors.black,
                ),
              ),
              Container(
                width: screenwidth * 0.9,
                height: screenheight * 0.14,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0), //
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(screenheight * 0.02),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("Hide Notification Preview",
                              style: TextStyle(
                                  fontSize: screenwidth * 0.04,
                                  color: Colors.black))
                        ],
                      ),
                      SizedBox(
                        height: screenheight * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width:200,
                            child: Text("Hide Preview text and call info in notification",maxLines: 2,
                                style: TextStyle(
                                    fontSize: screenwidth * 0.03,
                                    color: Colors.grey[500])),
                          ),
                          FlutterSwitch(
                            activeColor: Theme.of(context).cardColor,
                            width: screenwidth * 0.13,
                            height: screenheight * 0.034,
                            valueFontSize: 0,
                            toggleSize: screenwidth * 0.060,
                            value: status,
                            borderRadius: 15.0,
                            padding: 4.0,
                            showOnOff: true,
                            onToggle: (val) {
                              setState(() {
                                status = val;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: screenheight * 0.05,
              ),
              Container(
                width: screenwidth * 0.9,
                height: screenheight * 0.1,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0), //
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(screenheight * 0.02),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("Notification Sound",
                              style: TextStyle(
                                  fontSize: screenwidth * 0.04,
                                  color: Colors.grey[900])),
                          Spacer(),
                          Row(
                            children: [
                              Text("Default",
                                  style: TextStyle(
                                      fontSize: screenwidth * 0.033,
                                      color: Colors.grey[500])),
                              Icon(
                                Icons.arrow_forward,
                                color: Theme.of(context).cardColor,
                                size: screenwidth * 0.07,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                child: Divider(
                  height: 1,
                  color: Colors.black,
                ),
              ),
              Container(
                width: screenwidth * 0.9,
                height: screenheight * 0.1,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0), //
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(screenheight * 0.02),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("Ringtone",
                              style: TextStyle(
                                  fontSize: screenwidth * 0.04,
                                  color: Colors.black)),
                          Spacer(),
                          Row(
                            children: [
                              Text("Default",
                                  style: TextStyle(
                                      fontSize: screenwidth * 0.033,
                                      color: Colors.grey[500])),
                              Icon(
                                Icons.arrow_forward,
                                color: Theme.of(context).cardColor,
                                size: screenwidth * 0.07,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: screenheight * 0.05,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
