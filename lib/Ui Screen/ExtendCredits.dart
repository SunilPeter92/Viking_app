import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:progress_dialog/progress_dialog.dart';
import 'package:stripe_payment/stripe_payment.dart';
import 'package:viking/API/Api%20Class.dart';
import 'package:viking/Global/GlobalClass.dart';
import 'package:viking/Ui%20Screen/GetCredit.dart';
import '../Ui Screen/IncreaseBalance.dart';
import '../Animation/Slider.dart';

class ExtendsCredits extends StatefulWidget {
  final String number;

  const ExtendsCredits({Key key, this.number}) : super(key: key);

  @override
  _ExtendsCreditsState createState() => _ExtendsCreditsState();
}

class _ExtendsCreditsState extends State<ExtendsCredits> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    StripePayment.setOptions(
        StripeOptions(publishableKey: "pk_test_EcVoAnlmOQTc5WD8RfdkMLFd00VPBVeiLz",
            merchantId: "Test",
            androidPayMode: 'test'));
  }
  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).cardColor,

        title: Text(widget.number, style: TextStyle(color: Colors.white)),
          automaticallyImplyLeading: false ,
        centerTitle: true,
      ),
      body: WillPopScope(
          onWillPop: () async => false,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(screenwidth * 0.05),
                child: InkWell(
                  onTap: (){
                    print(widget.number+Global.userResponse.userDetails.id.toString());
                    String num=widget.number.replaceAll('(', "");
                    String num1=num.replaceAll(')', "");
                    String num2=num1.replaceAll(' ', "");
                    String num3=num2.replaceAll('-', "");

                    print(num3);
                    ProgressDialog dialog = ProgressDialog(context);
                    dialog.show();
                    API.BuyNumber(context, '+1$num3', Global.userResponse.userDetails.id.toString()).then((value) {
                      if(value==200){
                        print('hogya');
                        dialog.hide();
                        Fluttertoast.showToast(msg: 'You have Successfully Purchased Number',toastLength: Toast.LENGTH_SHORT);
                      }
                      else{
                        print('nahi hoa');
                      }
                    });

                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    color: Theme.of(context).cardColor,
                    child: Container(
                      width: screenwidth,
                      height: screenheight * 0.15,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: 20,
                              right: 20,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Get Number \n using Credits",
                                  style: TextStyle(
                                      fontSize: screenwidth * 0.04,
                                      color: Colors.white,
                                  fontWeight: FontWeight.bold
                                  ),
                                ),
                                Column(
                                  children: [
                                    FutureBuilder(

                                        future: API.GetUser(Global.userResponse.userDetails.id),
                                        builder: (context, snapshot) {
                                          if (snapshot.hasData) {
                                            return Text(
                                              snapshot.data.data.balance,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold),
                                            );
                                          } else if (snapshot.hasError) {
                                            return Text("${snapshot.error}");
                                          }

                                          // By default, show a loading spinner
                                          return Container(
                                            child: Text(
                                              '0',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          );
                                        }),
                                    RaisedButton(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(8)),
                                      color: Colors.white,
                                      child: Text(
                                        "Get More",
                                        style: TextStyle(
                                            color: Theme.of(context).cardColor),
                                      ),
                                      onPressed: () {
                                        Navigator.push(context,
                                            SlideRightRoute(page: GetCredits()));
                                      },
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: screenheight * 0.05,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      "RENEW FOR 1 MONTH",
                      style: TextStyle(
                          color: Theme.of(context).canvasColor,
                          fontSize: screenwidth * 0.05),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(left: screenwidth * 0.02),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "20",
                              style: TextStyle(
                                fontSize: screenwidth * 0.055,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Texts",
                              style: TextStyle(
                                  fontSize: screenwidth * 0.035,
                                  color: Colors.white),
                            ),
                            Container(
                              height: 9,
                              width: screenwidth * 0.15,
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                            )
                          ],
                        ),
                        SizedBox(
                          width: screenwidth * 0.17,
                        ),
                        Row(
                          children: [
                            Text(
                              "3000" + " credits\n      needed",
                              style: TextStyle(
                                  fontSize: screenwidth * 0.035,
                                  color: Colors.white),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: screenwidth * 0.02),
                              child: SizedBox(
                                height: screenheight * 0.07,
                                width: screenwidth * 0.25,
                                child: FlatButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        side: BorderSide(
                                            color: Theme.of(context).cardColor)),
                                    color: Colors.white,
                                    child: Text(
                                      "Extend",
                                      style: TextStyle(
                                        fontSize: screenwidth * 0.04,
                                        color: Theme.of(context).cardColor,
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          SlideRightRoute(
                                              page: GetCredits()));
                                    }),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  width: screenwidth * 0.85,
                  height: screenheight * 0.13,
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                        topRight: Radius.circular(15.0)),
                  ),
                ),
              ),
              Container(
                width: screenwidth * 0.85,
                child: Divider(
                  color: Colors.black,
                  height: 2,
                  thickness: 2,
                ),
              ),
              Container(
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(left: screenwidth * 0.02),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "20",
                                  style: TextStyle(
                                      fontSize: screenwidth * 0.055,
                                      color: Colors.white),
                                ),
                                Text(
                                  "Texts",
                                  style: TextStyle(
                                      fontSize: screenwidth * 0.035,
                                      color: Colors.white),
                                ),
                                Container(
                                  height: 9,
                                  width: screenwidth * 0.15,
                                  decoration: BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20))),
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: screenwidth * 0.02),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "20",
                                    style: TextStyle(
                                        fontSize: screenwidth * 0.055,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    "Texts",
                                    style: TextStyle(
                                        fontSize: screenwidth * 0.035,
                                        color: Colors.white),
                                  ),
                                  Container(
                                    height: 9,
                                    width: screenwidth * 0.15,
                                    decoration: BoxDecoration(
                                        color: Colors.orange,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "3000" + " credits\n      needed",
                              style: TextStyle(
                                  fontSize: screenwidth * 0.035,
                                  color: Colors.white),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: screenwidth * 0.02),
                              child: SizedBox(
                                height: screenheight * 0.07,
                                width: screenwidth * 0.25,
                                child: FlatButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        side: BorderSide(
                                            color:
                                                Theme.of(context).primaryColor)),
                                    color: Colors.white,
                                    child: Text(
                                      "Extend",
                                      style: TextStyle(
                                        fontSize: screenwidth * 0.04,
                                        color: Theme.of(context).cardColor,
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          SlideRightRoute(
                                              page: GetCredits()));
                                    }),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  width: screenwidth * 0.85,
                  height: screenheight * 0.13,
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(15.0),
                        bottomLeft: Radius.circular(15.0)),
                  ),
                ),
              ),
              SizedBox(
                height: screenheight * 0.02,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      "RENEWS FOR 3 MONTH",
                      style: TextStyle(
                          color: Theme.of(context).canvasColor,
                          fontSize: screenwidth * 0.055),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenheight * 0.02,
              ),
              Container(
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(left: screenwidth * 0.02),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "50",
                                  style: TextStyle(
                                    fontSize: screenwidth * 0.055,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "Texts",
                                  style: TextStyle(
                                    fontSize: screenwidth * 0.035,
                                    color: Colors.white,
                                  ),
                                ),
                                Container(
                                  height: 9,
                                  width: screenwidth * 0.15,
                                  decoration: BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20))),
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: screenwidth * 0.02),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "50",
                                    style: TextStyle(
                                      fontSize: screenwidth * 0.055,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    "Texts",
                                    style: TextStyle(
                                        fontSize: screenwidth * 0.035,
                                        color: Colors.white),
                                  ),
                                  Container(
                                    height: 9,
                                    width: screenwidth * 0.15,
                                    decoration: BoxDecoration(
                                        color: Colors.orange,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "3000" + " credits\n      needed",
                              style: TextStyle(
                                fontSize: screenwidth * 0.035,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: screenwidth * 0.02),
                              child: SizedBox(
                                height: screenheight * 0.07,
                                width: screenwidth * 0.25,
                                child: FlatButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        side: BorderSide(
                                            color:
                                                Theme.of(context).primaryColor)),
                                    color: Colors.white,
                                    child: Text(
                                      "Extend",
                                      style: TextStyle(
                                        fontSize: screenwidth * 0.04,
                                        color: Theme.of(context).cardColor,
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          SlideRightRoute(
                                              page: GetCredits()));
                                    }),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  width: screenwidth * 0.85,
                  height: screenheight * 0.13,
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
