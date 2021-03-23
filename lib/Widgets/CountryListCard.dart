import 'package:flag/flag.dart';
import 'package:flutter/material.dart';

class CountryCard extends StatelessWidget {
  String countrycode;
  String countryname;
  String flag;
  Function function;

  bool calls, sms, mms;
  CountryCard(
      {this.countrycode,
      this.countryname,
      this.flag,
      this.function,
      this.calls,
      this.mms,
      this.sms});
  double width, height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: function,
      child: Card(
        color: Colors.white,
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white70,
                    radius: 31,
                    child: Container(
                      margin: EdgeInsets.all(2),
                      child: ClipOval(
                          child: Flag(
                        this.flag,
                        fit: BoxFit.fill,
                        height: 50,
                        width: 50,
                      )),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        this.countryname,
                        style: TextStyle(
                            fontSize: width * 0.055, color: Colors.black),
                      ),
                      Container(
                        child: Row(
                          children: [
                            this.calls
                                ? Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(25.0) //
                                          ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 5, right: 5, top: 2, bottom: 2),
                                      child: Text(
                                        "Calls",
                                        style: TextStyle(
                                            color: Colors.grey[600],
                                            fontSize: width * 0.025),
                                      ),
                                    ),
                                  )
                                : Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey[100],
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(25.0) //
                                          ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 5, right: 5, top: 2, bottom: 2),
                                      child: Text(
                                        "Calls",
                                        style: TextStyle(
                                            color: Colors.grey[300],
                                            fontSize: width * 0.025),
                                      ),
                                    ),
                                  ),
                            this.sms
                                ? Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(25.0) //
                                          ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 5, right: 5, top: 2, bottom: 2),
                                      child: Text(
                                        "SMS",
                                        style: TextStyle(
                                            color: Colors.grey[600],
                                            fontSize: width * 0.025),
                                      ),
                                    ),
                                  )
                                : Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey[100],
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(25.0) //
                                          ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 5, right: 5, top: 2, bottom: 2),
                                      child: Text(
                                        "SMS",
                                        style: TextStyle(
                                            color: Colors.grey[300],
                                            fontSize: width * 0.025),
                                      ),
                                    ),
                                  ),
                            this.mms
                                ? Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(25.0) //
                                          ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 5, right: 5, top: 2, bottom: 2),
                                      child: Text(
                                        "MMS",
                                        style: TextStyle(
                                            color: Colors.grey[600],
                                            fontSize: width * 0.025),
                                      ),
                                    ),
                                  )
                                : Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey[100],
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(25.0) //
                                          ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 5, right: 5, top: 2, bottom: 2),
                                      child: Text(
                                        "MMS",
                                        style: TextStyle(
                                            color: Colors.grey[300],
                                            fontSize: width * 0.025),
                                      ),
                                    ),
                                  )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    this.countrycode + " ",
                    style: TextStyle(fontSize: width * 0.060),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Theme.of(context).cardColor,
                    size: width * 0.1,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
