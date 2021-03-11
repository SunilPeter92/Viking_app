import 'package:flutter/material.dart';
class MyButtonRaised extends StatelessWidget {
  final title;

  const MyButtonRaised({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: RaisedButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
          ),
          onPressed: (){
          },
          child: Text(title,style: TextStyle(fontSize: 18,color: Colors.white),),
          color: Colors.orange,
        ),
      ),
    );
  }
}
