import 'package:flutter/material.dart';
class InComing extends StatelessWidget {
  final String text,time;

  const InComing({Key key, this.text, this.time}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double screenwidth, screenheight;

    screenwidth = MediaQuery.of(context).size.width;
    screenheight = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(
        left: screenwidth * 0.05,
        right: screenwidth * 0.05,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            children: [
              Container(
                  width: screenwidth*0.8,
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(screenwidth * 0.05),
                    child: Text(text,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  )),

              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(time,
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
