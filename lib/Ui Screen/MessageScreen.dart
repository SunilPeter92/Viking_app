import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {
  @override
  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  double screenwidth, screenheight;
  @override
  Widget build(BuildContext context) {
    screenwidth = MediaQuery.of(context).size.width;
    screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Assistant ", style: TextStyle(color: Colors.white)),
        leading: BackButton(
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenwidth * 0.02),
        child: ListView(
          reverse: true,
          children: [
            SizedBox(
              height: screenheight * 0.07,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: screenwidth * 0.05,
                right: screenwidth * 0.05,
              ),
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(screenwidth * 0.05),
                    child: Column(
                      children: [
                        Text(
                          " Lorem Ipsum Lorem Ipsum Lorem Ipsum LoremIpsum Lorem Ipsum Lorem",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: screenwidth * 0.05,
                  right: screenwidth * 0.05,
                  bottom: screenwidth * 0.05),
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(screenwidth * 0.05),
                    child: Text(
                        " Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum"),
                  )),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Transform.translate(
        offset: Offset(0.0, -1 * MediaQuery.of(context).viewInsets.bottom),
        child: Container(
          child: Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.camera_alt_outlined,
                color: Colors.orange,
                size: screenwidth * 0.1,
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
              Icon(
                Icons.send,
                color: Colors.orange,
                size: screenwidth * 0.1,
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
}
