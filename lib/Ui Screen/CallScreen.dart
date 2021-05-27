import 'package:flutter/material.dart';
//import 'package:flutter_twilio_voice/flutter_twilio_voice.dart';
//import '../Widgets/CallingFeature.dart';

class CallScreen extends StatefulWidget {
  final String number;
  CallScreen({this.number});
  @override
  _CallScreenState createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  double width, height;

  bool mute = false;
  bool loud = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // Future.delayed(Duration(seconds: 2), () {
    //   requestpermissions().then((value) => {makecall()});
    // });
  }

  // Future<void> requestpermissions() async {
  //   var abc = await FlutterTwilioVoice.requestBackgroundPermissions();

  //   var bcd = await FlutterTwilioVoice.requestMicAccess();
  // }

  // Future<void> makecall() async {
  //   try {
  //     // await FlutterTwilioVoice.makeCall(
  //     //     toDisplayName: "",
  //     //     to: "+923158733304",
  //     //     from: "+16513834786",
  //     //     accessTokenUrl:
  //     //         "https://47d329d1d4947604fb6edb4034083a03/accesstoken");

  //     await FlutterTwilioVoice.registerClient(
  //         "AC794b2ecc2dd009149caa49687175f3a2", "wali khan");
  //   } catch (e) {
  //     print(e.toString());
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      body: Column(
        children: [
          SizedBox(
            height: height * 0.08,
          ),
          Center(
            child: Text(
              widget.number,
              style: TextStyle(
                  fontSize: width * 0.08, color: Colors.white),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Center(
            child: Text(
              "Calling",
              style: TextStyle(
                fontSize: width * 0.05,
                color: Theme.of(context).canvasColor,
              ),
            ),
          ),
          SizedBox(
            height: height * 0.5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              loud
                  ? SizedBox(
                      height: height * 0.09,
                      width: width * 0.25,
                      child: MaterialButton(
                        elevation: 0,
                        onLongPress: () {},
                        onPressed: () {
                          if (loud) {
                            setState(() {
                              loud = false;
                            });
                          } else {
                            setState(() {
                              loud = true;
                            });
                          }
                        },
                        color: Theme.of(context).canvasColor,
                        textColor: Colors.white,
                        child: Icon(
                          Icons.volume_up,
                          size: width * 0.09,
                        ),
                        shape: CircleBorder(),
                      ),
                    )
                  : SizedBox(
                      height: height * 0.09,
                      width: width * 0.25,
                      child: MaterialButton(
                        elevation: 0,
                        onLongPress: () {},
                        onPressed: () {
                          if (!loud) {
                            setState(() {
                              loud = true;
                            });
                          } else {
                            setState(() {
                              loud = false;
                            });
                          }
                        },
                        color: Theme.of(context).canvasColor,
                        textColor: Colors.white,
                        child: Icon(
                          Icons.volume_off,
                          size: width * 0.09,
                        ),
                        shape: CircleBorder(),
                      ),
                    ),
              SizedBox(
                height: height * 0.09,
                width: width * 0.25,
                child: MaterialButton(
                  elevation: 0,
                  onLongPress: () {},
                  onPressed: () {},
                  color: Theme.of(context).canvasColor,
                  textColor: Colors.white,
                  child: Icon(
                    Icons.dialpad,
                    size: width * 0.09,
                  ),
                  shape: CircleBorder(),
                ),
              ),
              mute
                  ? SizedBox(
                      height: height * 0.09,
                      width: width * 0.25,
                      child: MaterialButton(
                        elevation: 0,
                        onLongPress: () {},
                        onPressed: () {
                          if (mute) {
                            setState(() {
                              mute = false;
                            });
                          } else {
                            setState(() {
                              mute = true;
                            });
                          }
                        },
                        color: Theme.of(context).canvasColor,
                        textColor: Colors.white,
                        child: Icon(
                          Icons.mic,
                          size: width * 0.09,
                        ),
                        shape: CircleBorder(),
                      ),
                    )
                  : SizedBox(
                      height: height * 0.09,
                      width: width * 0.25,
                      child: MaterialButton(
                        elevation: 0,
                        onLongPress: () {},
                        onPressed: () {
                          if (!mute) {
                            setState(() {
                              mute = true;
                            });
                          } else {
                            setState(() {
                              mute = false;
                            });
                          }
                        },
                        color: Colors.grey,
                        textColor: Colors.white,
                        child: Icon(
                          Icons.mic_off_rounded,
                          size: width * 0.09,
                        ),
                        shape: CircleBorder(),
                      ),
                    ),
            ],
          ),
          SizedBox(
            height: height * 0.05,
          ),
          SizedBox(
            height: height * 0.09,
            width: width * 0.25,
            child: MaterialButton(
              elevation: 0,
              onLongPress: () {},
              onPressed: () {
                Navigator.pop(context);
              },
              color: Theme.of(context).cardColor,
              textColor: Colors.white,
              child: Icon(
                Icons.call_end,
                size: width * 0.09,
              ),
              shape: CircleBorder(),
            ),
          ),
        ],
      ),
    );
  }
}
