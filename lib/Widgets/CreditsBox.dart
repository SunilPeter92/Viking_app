import 'package:flutter/material.dart';

class Creditbox extends StatelessWidget {
  String credits;
  Function function;

  Creditbox({
    this.credits,
    this.function,
  });

  double width, height;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: function,
      child: Container(
        child: Row(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    decoration: new BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.all(Radius.circular(25.0)),
                    ),
                    width: width * 0.025,
                    height: height * 0.06,
                  ),
                )
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(right: width * 0.08),
                  child: Text(
                    this.credits,
                    style:
                        TextStyle(fontSize: width * 0.035, color: Colors.white),
                  ),
                ),
                SizedBox(height: height * 0.01),
                Text(
                  "credits",
                  style:
                      TextStyle(fontSize: width * 0.035, color: Colors.white),
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(height: height * 0.08),
                Padding(
                  padding: EdgeInsets.only(left: width * 0.05),
                  child: Icon(
                    Icons.add_circle_outline_outlined,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.all(
              Radius.circular(15.0) //                 <--- border radius here
              ),
        ),
        height: height * 0.13,
        width: width / 3,
      ),
    );
  }
}
