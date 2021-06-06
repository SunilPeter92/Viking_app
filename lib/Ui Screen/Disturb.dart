import 'package:flutter/material.dart';

class Disturb extends StatefulWidget {
  const Disturb({Key key}) : super(key: key);

  @override
  _DisturbState createState() => _DisturbState();
}

class _DisturbState extends State<Disturb> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).cardColor,
        title: Text("DO NOT DISTURBE ", style: TextStyle(color: Colors.white)),
        leading: BackButton(
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: screenheight * 0.05,
            ),
            Container(
              width: 250,
              child: Text(
                "Turn off call and text sound notification from",
                style: TextStyle(
                    color: Theme.of(context).canvasColor,
                    fontSize: screenwidth * 0.04),textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () => setState(() => selectedIndex=0),
              child: Center(
                child: Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.circular(10)
                  ),

                  padding: EdgeInsets.only(left: 20, right: 20 , top: 10),
                  child: Row(
                    children: <Widget>[

                      SizedBox(width: 10,),
                      Text(
                        "OFF",
                        style: TextStyle(
                          fontSize: 16,),
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
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(10)
                ),

                padding: EdgeInsets.only(left: 20, right: 20 , top: 10),
                child: Row(
                  children: <Widget>[

                    SizedBox(width: 10,),
                    Text(
                      "Always",
                      style: TextStyle(
                        fontSize: 16,),
                    ),
                    Spacer(),
                    (selectedIndex==1)
                        ? Icon(Icons.assignment_turned_in_outlined)
                        : Container(),

                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
