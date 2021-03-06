import 'dart:convert';
import '../Model/Conversation.dart';
import 'package:flutter/material.dart';
import '../API/Api Class.dart';
import '../Animation/Slider.dart';
import '../Widgets/inComing.dart';
import '../Widgets/OutGoing.dart';
import 'package:intl/intl.dart';

class MessageScreen extends StatefulWidget {
  final String number;

  const MessageScreen({Key key, this.number}) : super(key: key);
  @override
  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  double screenwidth, screenheight;
  var Time;
  List<Conversation> conversion = [];

  getConversation() {
    API.getConversation().then((response) {
      setState(() {
        Iterable list = json.decode(response.body);
        conversion = list.map((model) => Conversation.fromJson(model)).toList();
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getConversation();
  }

  @override
  Widget build(BuildContext context) {
    screenwidth = MediaQuery.of(context).size.width;
    screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).cardColor,
        title: Text(widget.number, style: TextStyle(color: Colors.white)),
        leading: BackButton(
          color: Colors.white,
        ),
      ),
      body: ListView.builder(
          reverse: true,
          itemCount: conversion.length,
          itemBuilder: (ct, i) {
            Conversation conversation = conversion[i];
            return Column(
              children: [
                conversation.outgoingMsg != null
                    ? OutGoing(
                        text: conversation.outgoingMsg,
                        time: timeAgoSinceDate(conversation.outgoingDate.date),
                      )
                    : Container(),
                conversation.incomingMsg != null
                    ? InComing(
                        text: conversation.incomingMsg,
                        time: timeAgoSinceDate(conversation.incomingDate.date),
                      )
                    : Container(),
                SizedBox(
                  height: screenwidth * 0.05,
                )
              ],
            );
          }),
      bottomNavigationBar: Transform.translate(
        offset: Offset(0.0, -1 * MediaQuery.of(context).viewInsets.bottom),
        child: Container(
          child: Row(
            children: [
              SizedBox(
                width: 10,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.camera_alt_outlined,
                  color: Theme.of(context).cardColor,
                  size: screenwidth * 0.1,
                ),
              ),
              Expanded(
                child: TextField(
                  onTap: () {},
                  onSubmitted: (value) {},
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.only(left: 5, bottom: 5, right: 5),
                    filled: true,
                    fillColor: Colors.grey[100],
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      borderSide:
                          BorderSide(color: Colors.grey[100], width: 1.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      borderSide:
                          BorderSide(color: Colors.grey[100], width: 1.0),
                    ),
                    hintText: "Type a message",
                    hintStyle: TextStyle(fontSize: 15.0, color: Colors.grey),
                  ),
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.send,
                  color: Theme.of(context).cardColor,
                  size: screenwidth * 0.1,
                ),
                onPressed: () {
                  // Navigator.push(
                  //     context, SlideRightRoute(page: MessageScreen()));
                },
              ),
              SizedBox(
                width: 8,
              ),
            ],
          ),
        ),
      ),
    );
  }

  String timeAgoSinceDate(String time, {bool numericDate=true}) {
    DateTime date = DateFormat("yyyy-MM-dd HH:mm:ss").parse(time);
    DateTime date2 = DateTime.now();
    Duration difference = date2.difference(date);
    if (difference.inDays > 8) {
      return date.toString();
      // return date.toString();
    } else if ((difference.inDays / 7).floor() >= 1) {
      return numericDate?"1 week ago":"Last week";
    } else if(difference.inDays>=2){
      return "${difference.inDays} days ago";
    } else if(difference.inDays >= 1){
      return numericDate?"1 day ago":"yesterday";
    }else if(difference.inHours>=2){
      return "${difference.inHours} hours ago";
    }else if(difference.inHours>=1){
      return numericDate?"1 hour ago":"An Hour ago";
    }else if(difference.inMinutes>=2){
      return "${difference.inMinutes} minutes ago";
    }else if(difference.inMinutes>=1){
      return numericDate?"1 minute ago":"a minute ago";
    }else if(difference.inSeconds>=2){
      return "${difference.inSeconds} seconds ago";
    }
    else{
      return "Just now";
    }
  }
}
