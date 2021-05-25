import 'package:flutter/material.dart';
import '../Animation/Slider.dart';

class MessageScreen extends StatefulWidget {

  String no;
  MessageScreen({this.no}) : super();

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
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).cardColor,
        title: Text(widget.no, style: TextStyle(color: Colors.white)),
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
            // Padding(
            //   padding: EdgeInsets.only(
            //     left: screenwidth * 0.05,
            //     right: screenwidth * 0.05,
            //   ),
            //   child: Container(
            //       decoration: BoxDecoration(
            //         color: Theme.of(context).cardColor,
            //         borderRadius: BorderRadius.only(
            //           topLeft: Radius.circular(20),
            //           topRight: Radius.circular(20),
            //           bottomLeft: Radius.circular(20),
            //         ),
            //       ),
            //       child: Padding(
            //         padding: EdgeInsets.all(screenwidth * 0.05),
            //         child: Column(
            //           children: [
            //             Text(
            //               " Lorem Ipsum Lorem Ipsum Lorem Ipsum LoremIpsum Lorem Ipsum Lorem",
            //               style: TextStyle(
            //                 color: Colors.white,
            //               ),
            //             ),
            //           ],
            //         ),
            //       )),
            // ),
            // Padding(
            //   padding: EdgeInsets.only(
            //       left: screenwidth * 0.05,
            //       right: screenwidth * 0.05,
            //       bottom: screenwidth * 0.05),
            //   child: Container(
            //       decoration: BoxDecoration(
            //         color: Colors.grey[200],
            //         borderRadius: BorderRadius.only(
            //           topLeft: Radius.circular(20),
            //           topRight: Radius.circular(20),
            //           bottomRight: Radius.circular(20),
            //         ),
            //       ),
            //       child: Padding(
            //         padding: EdgeInsets.all(screenwidth * 0.05),
            //         child: Text(
            //             " Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum"),
            //       )),
            // ),
            Padding(
              padding: EdgeInsets.only(
                left: screenwidth * 0.5,
                right: screenwidth * 0.05,
              ),
              child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
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
                          " I Love You",
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
                  right: screenwidth * 0.5,
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
                        " Hello"),
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
                  Navigator.push(
                      context, SlideRightRoute(page: MessageScreen()));
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
}
