import 'package:flutter/material.dart';

class AddressRequired extends StatelessWidget {
  bool isAdressRequired;
  String countryname;

  AddressRequired({this.isAdressRequired, @required this.countryname});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Visibility(
        visible: isAdressRequired,
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
                        "Address Required",
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
                      " local numbers require some personal or address information by law.",
                  style: TextStyle(color: Colors.grey),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
