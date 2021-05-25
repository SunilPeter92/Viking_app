import 'package:flutter/material.dart';
import 'package:viking/Animation/Slider.dart';
import 'package:viking/Ui%20Screen/SearchContacts.dart';

import 'MessageScreen.dart';

class NewMessegeScreen extends StatefulWidget {
  final String number;

  const NewMessegeScreen({Key key, this.number}) : super(key: key);

  @override
  _SearchContactsState createState() => _SearchContactsState();
}

class _SearchContactsState extends State<NewMessegeScreen> {
  var tec;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tec=TextEditingController(text: widget.number==null?'':widget.number);
  }
  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      body: Column(
        children: [

          SizedBox(
            height: screenheight * 0.1,
          ),
          Text(
            "New Messege",
            style: TextStyle(
                fontSize: screenwidth * 0.07,
                color: Theme.of(context).cardColor),
          ),
          SizedBox(
            height: screenwidth * 0.1,
          ),
      Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "To",
            style: TextStyle(

                fontSize: screenwidth * 0.06,
                color: Theme.of(context).cardColor),
          ),
        ),
        Expanded(
          child: TextField(
            controller: tec,
            enabled: false,
              style: TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                // prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                hintText: 'Recipient',

                hintStyle: TextStyle(letterSpacing: 2, color: Colors.grey),

                // focusedBorder: InputBorder.none,
                // enabledBorder: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: Colors.orange[50]),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: Colors.orange[50]),
                ),
              )),
        ),
        IconButton(
          icon: Icon(Icons.add_circle_outline_outlined,
              color: Theme.of(context).cardColor,
              size: screenwidth * 0.09),
          onPressed: () {
            Navigator.push(
                context, SlideRightRoute(page: SearchContacts()));
          },
        ),
        

      ],
      ),
          Spacer(),
          Container(
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
                        context, SlideRightRoute(page: MessageScreen(no :tec.text)));
                  },
                ),
                SizedBox(
                  width: 8,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
