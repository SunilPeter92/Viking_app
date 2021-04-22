import 'package:flutter/material.dart';
import 'package:viking/Widgets/AddCreditsScreenCard.dart';

class IncreaseBalance extends StatefulWidget {
  @override
  _IncreaseBalanceState createState() => _IncreaseBalanceState();
}

class _IncreaseBalanceState extends State<IncreaseBalance> {
  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        title: Text("Increase Balance", style: TextStyle(color: Colors.white)),
        leading: BackButton(
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: screenheight * 0.1,
            ),
            Center(
              child: SizedBox(
                height: screenheight * 0.1,
                width: screenwidth * 0.8,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(color: Theme.of(context).primaryColor)),
                  color: Theme.of(context).cardColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Minutes",
                        style: TextStyle(
                            fontSize: screenwidth * 0.05, color: Colors.white),
                      ),
                      Text(
                        "0",
                        style: TextStyle(
                            fontSize: screenwidth * 0.05, color: Colors.white),
                      ),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            SizedBox(
              height: screenheight * 0.01,
            ),
            Center(
              child: SizedBox(
                height: screenheight * 0.1,
                width: screenwidth * 0.8,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(color: Theme.of(context).primaryColor)),
                  color: Theme.of(context).cardColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Texts",
                        style: TextStyle(
                            fontSize: screenwidth * 0.05, color: Colors.white),
                      ),
                      Text(
                        "0",
                        style: TextStyle(
                            fontSize: screenwidth * 0.05, color: Colors.white),
                      ),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            SizedBox(
              height: screenheight * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Your Credits:0",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "Get More",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            SizedBox(
              height: screenheight * 0.05,
            ),
            Text(
              "Increase weith Credits",
              style: TextStyle(
                color: Theme.of(context).canvasColor,
                fontSize: screenwidth * 0.045,
              ),
            ),
            SizedBox(
              height: screenheight * 0.05,
            ),
            // Container(
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceAround,
            //     children: [
            //       Column(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           Text(
            //             "20",
            //             style: TextStyle(
            //                 fontSize: screenwidth * 0.055, color: Colors.grey),
            //           ),
            //           Text(
            //             "Texts",
            //             style: TextStyle(
            //                 fontSize: screenwidth * 0.035, color: Colors.grey),
            //           ),
            //         ],
            //       ),
            //       Row(
            //         children: [
            //           Text(
            //             "300 credits\n      needed",
            //             style: TextStyle(
            //                 fontSize: screenwidth * 0.035, color: Colors.grey),
            //           ),
            //           Padding(
            //             padding: EdgeInsets.only(left: screenwidth * 0.02),
            //             child: SizedBox(
            //               height: screenheight * 0.08,
            //               width: screenwidth * 0.25,
            //               child: FlatButton(
            //                 shape: RoundedRectangleBorder(
            //                     borderRadius: BorderRadius.circular(12),
            //                     side: BorderSide(
            //                         color: Theme.of(context).primaryColor)),
            //                 color: Colors.orange,
            //                 child: Text(
            //                   "Add",
            //                   style: TextStyle(
            //                       fontSize: screenwidth * 0.05,
            //                       color: Colors.white),
            //                 ),
            //                 onPressed: () {},
            //               ),
            //             ),
            //           ),
            //         ],
            //       )
            //     ],
            //   ),
            //   width: screenwidth * 0.85,
            //   height: screenheight * 0.15,
            //   decoration: BoxDecoration(
            //     color: Colors.grey[100],
            //     borderRadius: BorderRadius.all(Radius.circular(
            //             15.0) //                 <--- border radius here
            //         ),
            //   ),
            // ),
            AddCreditsCard(
              credits: "300",
              onPressed: () {},
              texts: "20",
            ),
            SizedBox(
              height: 15,
            ),
            AddCreditsCard(
              credits: "900",
              onPressed: () {},
              texts: "50",
            ),
            SizedBox(
              height: 15,
            ),
            AddCreditsCard(
              credits: "900",
              onPressed: () {},
              texts: "50",
            )
          ],
        ),
      ),
    );
  }
}
