import 'package:flutter/material.dart';

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
              style:
                  TextStyle(color: Theme.of(context).canvasColor, fontSize: 18),
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Text(
              "International Pricing",
              style:
                  TextStyle(color: Theme.of(context).canvasColor, fontSize: 18),
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Text(
              "Rate the app",
              style:
                  TextStyle(color: Theme.of(context).canvasColor, fontSize: 18),
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Text(
              "FAQ",
              style:
                  TextStyle(color: Theme.of(context).canvasColor, fontSize: 18),
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Text(
              "Account",
              style:
                  TextStyle(color: Theme.of(context).canvasColor, fontSize: 18),
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Text(
              "Privacy Policy",
              style:
                  TextStyle(color: Theme.of(context).canvasColor, fontSize: 18),
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Text(
              "Terms of Use",
              style:
                  TextStyle(color: Theme.of(context).canvasColor, fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
