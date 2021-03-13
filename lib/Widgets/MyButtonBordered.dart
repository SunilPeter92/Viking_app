import 'package:flutter/material.dart';

class MyButtonBordered extends StatelessWidget {
  final title;

  const MyButtonBordered({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(color: Theme.of(context).primaryColor)),
        onPressed: () {},
        child: Text(
          title,
          style: TextStyle(fontSize: 18, color: Theme.of(context).primaryColor),
        ),
        color: Colors.white,
      ),
    );
  }
}
