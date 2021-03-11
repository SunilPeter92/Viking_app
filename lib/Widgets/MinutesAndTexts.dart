import 'package:flutter/material.dart';

class MinutesAndTexts extends StatelessWidget {
  String minutes, text;
  MinutesAndTexts({this.minutes, this.text});

  double width, height;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Container(
      child: Row(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  decoration: new BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  ),
                  width: width * 0.025,
                  height: height * 0.06,
                ),
              )
            ],
          ),
          Column(
            children: [
              SizedBox(height: height * 0.01),
              Padding(
                padding: EdgeInsets.only(right: width * 0.09),
                child: Text(
                  this.minutes,
                  style: TextStyle(fontSize: width * 0.035, color: Colors.grey),
                ),
              ),
              SizedBox(height: height * 0.01),
              Text(
                "minutes",
                style: TextStyle(fontSize: width * 0.035, color: Colors.grey),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  decoration: new BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  ),
                  width: width * 0.025,
                  height: height * 0.06,
                ),
              )
            ],
          ),
          Column(
            children: [
              SizedBox(height: height * 0.01),
              Padding(
                padding: EdgeInsets.only(right: width * 0.08),
                child: Text(
                  this.text,
                  style: TextStyle(fontSize: width * 0.035, color: Colors.grey),
                ),
              ),
              SizedBox(height: height * 0.01),
              Text(
                "texts  ",
                style: TextStyle(fontSize: width * 0.035, color: Colors.grey),
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(height: height * 0.08),
              Padding(
                padding: EdgeInsets.only(left: width * 0.05),
                child: Icon(
                  Icons.add_circle_outline_outlined,
                  color: Colors.green,
                ),
              )
            ],
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.all(
            Radius.circular(15.0) //                 <--- border radius here
            ),
      ),
      height: height * 0.13,
      width: width / 2,
    );
  }
}
