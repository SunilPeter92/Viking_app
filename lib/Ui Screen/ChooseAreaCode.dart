import 'package:flutter/material.dart';
import '../Animation/Slider.dart';
import 'ChooseNumber.dart';

class ChooseAreaCode extends StatefulWidget {
  String countryname;
  ChooseAreaCode({@required this.countryname});
  @override
  _ChooseAreaCodeState createState() => _ChooseAreaCodeState();
}

class _ChooseAreaCodeState extends State<ChooseAreaCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose Area Code", style: TextStyle(color: Colors.white)),
        leading: BackButton(
          color: Colors.white,
        ),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              leading: Text(
                "205",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    SlideRightRoute(
                        page: ChooseNumber(
                      countryname: widget.countryname,
                    )));
              },
              trailing: Icon(
                Icons.arrow_forward_rounded,
                color: Colors.orange,
                size: 30,
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Text(
                "251",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    SlideRightRoute(
                        page: ChooseNumber(
                      countryname: widget.countryname,
                    )));
              },
              trailing: Icon(
                Icons.arrow_forward_rounded,
                color: Colors.orange,
                size: 30,
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Text(
                "256",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    SlideRightRoute(
                        page: ChooseNumber(
                      countryname: "",
                    )));
              },
              trailing: Icon(
                Icons.arrow_forward_rounded,
                color: Colors.orange,
                size: 30,
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Text(
                "334",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    SlideRightRoute(
                        page: ChooseNumber(
                      countryname: "",
                    )));
              },
              trailing: Icon(
                Icons.arrow_forward_rounded,
                color: Colors.orange,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
