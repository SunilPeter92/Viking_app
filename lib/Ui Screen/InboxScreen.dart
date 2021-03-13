import 'package:flutter/material.dart';
import '../Animation/Slider.dart';
import 'MessageScreen.dart';

class InBoxScreen extends StatefulWidget {
  @override
  _InBoxScreenState createState() => _InBoxScreenState();
}

class _InBoxScreenState extends State<InBoxScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.white,
        ),
        title: Text(
          "Inbox Screen",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              onTap: () {
                Navigator.push(context, SlideRightRoute(page: MessageScreen()));
              },
              trailing: Text("4:45 pm"),
              leading: CircleAvatar(
                radius: 30,
                child: ClipOval(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child:
                        Image.network("http://www.gravatar.com/avatar/?d=mp"),
                  ),
                ),
              ),
              title: Text("John micheal"),
            ),
          ),
          Card(
            child: ListTile(
              trailing: Text("3:45 pm"),
              onTap: () {
                Navigator.push(context, SlideRightRoute(page: MessageScreen()));
              },
              leading: CircleAvatar(
                radius: 30,
                child: ClipOval(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child:
                        Image.network("http://www.gravatar.com/avatar/?d=mp"),
                  ),
                ),
              ),
              title: Text("Jaymes charles"),
            ),
          ),
          Card(
            child: ListTile(
              trailing: Text("4:45 pm"),
              onTap: () {
                Navigator.push(context, SlideRightRoute(page: MessageScreen()));
              },
              leading: CircleAvatar(
                radius: 30,
                child: ClipOval(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child:
                        Image.network("http://www.gravatar.com/avatar/?d=mp"),
                  ),
                ),
              ),
              title: Text("George charles"),
            ),
          )
        ],
      ),
    );
  }
}
