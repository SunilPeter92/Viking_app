import 'package:flutter/material.dart';

class AddCreditsCard extends StatelessWidget {
  String texts;
  String credits;
  Function onPressed;
  AddCreditsCard({this.texts, this.credits, this.onPressed});

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.width;
    return Container(
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  this.texts,
                  style: TextStyle(
                      fontSize: screenwidth * 0.055, color: Colors.grey),
                ),
                Text(
                  "Texts",
                  style: TextStyle(
                      fontSize: screenwidth * 0.035, color: Colors.grey),
                ),
                Container(
                  height: 9,
                  width: screenwidth * 0.15,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                )
              ],
            ),
            Row(
              children: [
                Text(
                  this.credits + " credits\n      needed",
                  style: TextStyle(
                      fontSize: screenwidth * 0.035, color: Colors.grey),
                ),
                Padding(
                  padding: EdgeInsets.only(left: screenwidth * 0.02),
                  child: SizedBox(
                    height: screenheight * 0.15,
                    width: screenwidth * 0.25,
                    child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                            side: BorderSide(
                                color: Theme.of(context).primaryColor)),
                        color: Colors.orange,
                        child: Text(
                          "Add",
                          style: TextStyle(
                              fontSize: screenwidth * 0.05,
                              color: Colors.white),
                        ),
                        onPressed: this.onPressed),
                  ),
                ),
              ],
            )
          ],
        ),
        width: screenwidth * 0.85,
        height: screenheight * 0.30,
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
      ),
    );
  }
}
