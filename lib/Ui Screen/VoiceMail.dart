import 'package:flutter/material.dart';

class ForwardingVoiceMail extends StatefulWidget {
  const ForwardingVoiceMail({Key key}) : super(key: key);

  @override
  _ForwardingVoiceMailState createState() => _ForwardingVoiceMailState();
}

class _ForwardingVoiceMailState extends State<ForwardingVoiceMail> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).cardColor,
        title: Text("Forwarding / Voice Mail ", style: TextStyle(color: Colors.white)),
        leading: BackButton(
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: screenheight * 0.05,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text(
                    "NUMBER SETTING",
                    style: TextStyle(
                        color: Theme.of(context).canvasColor,
                        fontSize: screenwidth * 0.04),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () => setState(() => selectedIndex=0),
              child: Center(
                child: Container(
                  height: 80,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  padding: EdgeInsets.only(left: 20, right: 20 , top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      SizedBox(width: 10,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Set to OFF",
                            style: TextStyle(
                                fontSize: 16,),
                          ),
                          SizedBox(height: 5,),
                          Container(
                            width: 200,
                            child: Text(
                              "Turn OFF call forwarding and Personalized voicemail greeting",
                              style: TextStyle(
                                  fontSize: 13,),maxLines: 2,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      (selectedIndex==0)
                          ? Icon(Icons.assignment_turned_in_outlined)
                          : Container(),

                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () => setState(() => selectedIndex=1),
              child: Container(
                height: 80,
                width: 300,
                decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(10)
                ),

                padding: EdgeInsets.only(left: 20, right: 20 , top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                    SizedBox(width: 10,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Call Forwarding ON",
                          style: TextStyle(
                            fontSize: 16,),
                        ),
                        SizedBox(height: 5,),
                        Container(
                          width: 200,
                          child: Text(
                            "Forward calls to a different number",
                            style: TextStyle(
                              fontSize: 13,),maxLines: 2,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    (selectedIndex==1)
                        ? Icon(Icons.assignment_turned_in_outlined)
                        : Container(),

                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () => setState(() => selectedIndex=2),
              child: Container(
                height: 80,
                width: 300,
                decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(10)
                ),

                padding: EdgeInsets.only(left: 20, right: 20 , top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                    SizedBox(width: 10,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Customize Voice Greetings",
                          style: TextStyle(
                            fontSize: 16,),
                        ),
                        SizedBox(height: 5,),
                        Container(
                          width: 200,
                          child: Text(
                            "Record and Use a custome, personalized voicemail Greetings.",
                            style: TextStyle(
                              fontSize: 13,),maxLines: 2,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    (selectedIndex==2)
                        ? Icon(Icons.assignment_turned_in_outlined)
                        : Container(),

                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),

          ],
        ),
      ),
    );
  }
}
