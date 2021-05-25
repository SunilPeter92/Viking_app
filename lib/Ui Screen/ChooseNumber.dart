import 'package:flutter/material.dart';
import 'package:viking/API/Api%20Class.dart';
import '../Animation/Slider.dart';
import 'ExtendCredits.dart';
import 'OfferScreen.dart';
import 'IdentityVerification.dart';
import 'package:viking/Model/Number.dart';


class ChooseNumber extends StatefulWidget {
  String countryname;
  ChooseNumber({@required this.countryname});
  @override
  _ChooseNumberState createState() => _ChooseNumberState();
}

class _ChooseNumberState extends State<ChooseNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).cardColor,
        title: Text("Choose Number", style: TextStyle(color: Colors.white)),
        leading: BackButton(
          color: Colors.white,
        ),
      ),

      body: FutureBuilder<Numbers>(
        future: API.getNumber(widget.countryname),
        builder: (ct,sp){
          return sp.data.data==null?Center(child: Text("No Number Found For this Country", style: TextStyle(color: Colors.white))):sp.hasData?ListView.builder(
            itemCount: sp.data.data.length,
            itemBuilder: (ct,i){
              return Card(
                margin: EdgeInsets.only(
                  top: 5,
                  bottom: 5,
                  left: 5,
                  right: 5,
                ),
                color: Colors.white,
                child: ListTile(
                  leading: Text(
                    sp.data.data[i],
                    style: TextStyle(
                      color: Theme.of(context).canvasColor,
                      fontSize: 18,
                    ),
                  ),
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     SlideRightRoute(
                    //         page: OfferScreen(
                    //           countryname: widget.countryname,
                    //           number: sp.data.data[i],
                    //         )));
                    Navigator.push(context, SlideRightRoute(page: ExtendsCredits(number: sp.data.data[i],)));
                  },
                  trailing: Icon(
                    Icons.arrow_forward_rounded,
                    color: Theme.of(context).cardColor,
                    size: 25,
                  ),
                ),
              );
            },
          ):Center(child: CircularProgressIndicator(backgroundColor: Colors.white,),);
        },
      )
    );
  }
}
