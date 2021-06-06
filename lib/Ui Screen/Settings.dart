import 'package:flutter/material.dart';
import 'package:launch_review/launch_review.dart';
import 'package:url_launcher/url_launcher.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).cardColor,
        title: Text("Settings", style: TextStyle(color: Colors.white)),
        leading: BackButton(
          color: Colors.white,
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            onTap: () {},
            leading: Text(
              "Help",
                style: TextStyle(color: Colors.white, fontSize: 18)
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Text(
              "International Pricing",
              style:
                  TextStyle(color: Theme.of(context).canvasColor, fontSize: 15),
            ),
          ),
          ListTile(
            onTap: () {
              LaunchReview.launch(androidAppId: "com.facebook.katana",
                  iOSAppId: "284882215");
            },
            leading: Text(
              "Rate the app",
              style:
                  TextStyle(color: Theme.of(context).canvasColor, fontSize: 15),
            ),
          ),
          ListTile(
            onTap:
            _launchURL,
            leading: Text(
              "FAQ",
              style:
                  TextStyle(color: Theme.of(context).canvasColor, fontSize: 15),
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Text(
              "Account",
              style:
                  TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
          ListTile(
            onTap:
            _launchURL,
            leading: Text(
              "Privacy Policy",
              style:
                  TextStyle(color: Theme.of(context).canvasColor, fontSize: 15),
            ),
          ),
          ListTile(
            onTap:
            _launchURL,
            leading: Text(
              "Terms of Use",
              style:
                  TextStyle(color: Theme.of(context).canvasColor, fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
  _launchURL() async {
    const url = 'https://flutter.io';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
