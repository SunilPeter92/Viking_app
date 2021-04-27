import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final title;
  final Function textValidator;
  final controllar;
  final obs;

  const MyTextField({Key key, this.title, this.textValidator , this.controllar , this.obs}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: new TextFormField(
        controller: controllar,
        validator: textValidator,
        obscureText: obs,
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
      ),
    );
  }
}
