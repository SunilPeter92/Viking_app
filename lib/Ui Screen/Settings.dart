import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
              style: TextStyle(color: Colors.orange, fontSize: 25),
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Text(
              "International Pricing",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Text(
              "Rate the app",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Text(
              "FAQ",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Text(
              "Account",
              style: TextStyle(color: Colors.orange, fontSize: 25),
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Text(
              "Privacy Policy",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Text(
              "Terms of Use",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
