import 'package:flutter/material.dart';

class IdRequiredCard extends StatelessWidget {
  String countryname;
  bool isidrequired;
  IdRequiredCard({@required this.isidrequired, @required this.countryname});
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Container(
      child: Visibility(
        visible: isidrequired,
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(color: Colors.white),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.error,
                      color: Colors.grey,
                    ),
                    Container(
                      child: Text(
                        "ID Required",
                        style: TextStyle(color: Colors.black),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  this.countryname +
                      " local numbers require identity verification bt law. You will be asked to upload documents.",
                  style: TextStyle(color: Colors.grey),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
