import 'package:flag/flag.dart';
import 'package:flutter/material.dart';

class CountryFavouriteTile extends StatelessWidget {
  String flag;
  String trailing;
  String title;
  Function onTap;
  CountryFavouriteTile({this.flag, this.trailing, this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.width;

    return Card(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 10),
        child: ListTile(
            onTap: onTap,
            title: Text(
              title,
              style: TextStyle(
                fontSize: width * 0.04,
              ),
            ),
            leading: CircleAvatar(
              backgroundColor: Colors.white70,
              radius: 31,
              child: Container(
                margin: EdgeInsets.all(2),
                child: ClipOval(
                    child: Flag(
                  flag,
                  fit: BoxFit.fill,
                  height: 50,
                  width: 50,
                )),
              ),
            ),
            trailing: Text(
              trailing,
              style: TextStyle(
                fontSize: width * 0.03,
                color: Theme.of(context).cardColor,
              ),
            )),
      ),
    );
  }
}
