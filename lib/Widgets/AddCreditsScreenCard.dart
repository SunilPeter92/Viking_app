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
                      fontSize: screenwidth * 0.055, color: Colors.white),
                ),
                Text(
                  "Texts",
                  style: TextStyle(
                      fontSize: screenwidth * 0.035, color: Colors.white),
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
                      fontSize: screenwidth * 0.035, color: Colors.white),
                ),
                Padding(
                  padding: EdgeInsets.only(left: screenwidth * 0.02),
                  child: SizedBox(
                    height: screenheight * 0.13,
                    width: screenwidth * 0.25,
                    child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                            side: BorderSide(
                                color: Colors.white)),
                        color: Colors.white,
                        child: Text(
                          "Add",
                          style: TextStyle(
                              fontSize: screenwidth * 0.04,
                              color: Theme.of(context).cardColor),
                        ),
                        onPressed: this.onPressed),
                  ),
                ),
              ],
            )
          ],
        ),
        width: screenwidth * 0.85,
        height: screenheight * 0.20,
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
      ),
    );
  }
}
