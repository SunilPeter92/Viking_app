import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final title;

  const MyTextField({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return new TextField(
      decoration: new InputDecoration(
          border: new OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              const Radius.circular(10.0),
            ),
            borderSide: BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          filled: true,
          hintStyle: new TextStyle(color: Colors.grey[800]),
          hintText: title,
          fillColor: Colors.grey[200]),
    );
  }
}
