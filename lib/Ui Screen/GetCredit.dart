import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:progress_dialog/progress_dialog.dart';
import 'package:stripe_payment/stripe_payment.dart';
import 'package:viking/API/Api%20Class.dart';
import 'package:viking/Global/GlobalClass.dart';
import 'package:viking/Model/GetPkg.dart';
import 'package:viking/Model/GetPremiumPkg.dart';
import 'package:viking/Model/GetUserModel.dart';

import 'package:viking/Ui%20Screen/StripPayment.dart';
import '../Ui Screen/IncreaseBalance.dart';
import '../Animation/Slider.dart';
import 'SplashScreen.dart';

class GetCredits extends StatefulWidget {
  @override
  _GetCreditsState createState() => _GetCreditsState();
}

class _GetCreditsState extends State<GetCredits> {
  GlobalKey<ScaffoldState> _scaffoldKey=GlobalKey();
  Token _paymentToken;
  String _error;
  int id ;
  @override
  void initState() {
    // TODO: implement initState
    id = Splash.prefs.getInt('userID');
    StripePayment.setOptions(
        StripeOptions(publishableKey: "pk_test_EcVoAnlmOQTc5WD8RfdkMLFd00VPBVeiLz",
            merchantId: "Test",
            androidPayMode: 'test'));
     API.getpkg();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).cardColor,
        title: Text("Phone Number ", style: TextStyle(color: Colors.white)),
        leading: BackButton(
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(screenwidth * 0.05),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Theme.of(context).cardColor,
                child: Container(
                  width: screenwidth * 0.85,
                  height: screenheight * 0.09,
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Your Credits",
                              style: TextStyle(
                                  fontSize: screenwidth * 0.05,
                                  color: Colors.white),
                            ),
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
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                "Phoner credits allow you to send international calls and text, choose new phone numbers and more",
                style: TextStyle(
                    color: Theme.of(context).canvasColor,
                    fontSize: screenwidth * 0.04),
              ),
            ),
            SizedBox(
              height: screenheight * 0.05,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text(
                    "STANDARD PACKS",
                    style: TextStyle(
                        color: Theme.of(context).canvasColor,
                        fontSize: screenwidth * 0.04),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: FutureBuilder<GetPkgModel>(
                  future: API.getpkg(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Container(
                        height: 220,
                        width: screenwidth * 0.85,
                        decoration: BoxDecoration(
                            color: Theme.of(context).cardColor,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: snapshot.data.userData.length,
                            scrollDirection: Axis.vertical,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                child: Padding(
                                  padding:
                                  EdgeInsets.only(left: screenwidth * 0.03),
                                  child: Row(
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                snapshot.data.userData[index].pCredits,
                                                style: TextStyle(
                                                    fontSize: screenwidth * 0.04,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                              Text(
                                                "Credits",
                                                style: TextStyle(
                                                  fontSize: screenwidth * 0.04,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            snapshot.data.userData[index].pName,
                                            style: TextStyle(
                                                fontSize: screenwidth * 0.035,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                     Spacer(),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: screenwidth * 0.02),
                                            child: SizedBox(
                                              height: screenheight * 0.07,
                                              width: screenwidth * 0.25,
                                              child: FlatButton(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                      BorderRadius.circular(12),
                                                      side: BorderSide(
                                                          color: Theme.of(context)
                                                              .cardColor)),
                                                  color: Colors.white,
                                                  child: Text(
                                                    'Rs. ${snapshot.data.userData[index].pPrize}',
                                                    style: TextStyle(
                                                      fontSize: screenwidth * 0.04,
                                                      color: Theme.of(context)
                                                          .cardColor,
                                                    ),
                                                  ),
                                                  onPressed: () {
                                                    // if (Platform.isIOS) {
                                                    //   _controller.jumpTo(450);
                                                    // }
                                                    StripePayment.paymentRequestWithNativePay(
                                                      androidPayOptions: AndroidPayPaymentRequest(
                                                        totalPrice: "2.40",
                                                        currencyCode: "EUR",
                                                      ),
                                                      applePayOptions: ApplePayPaymentOptions(
                                                        countryCode: 'DE',
                                                        currencyCode: 'EUR',
                                                        items: [
                                                          ApplePayItem(
                                                            label: 'Test',
                                                            amount: '27',
                                                          )
                                                        ],
                                                      ),
                                                    ).then((token) {
                                                      setState(() {
                                                        _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text('Received ${token.tokenId}')));
                                                        _paymentToken = token;
                                                      });
                                                      ProgressDialog dialog = ProgressDialog(context);
                                                      dialog.show();
                                                      API.BuyPackage(context, snapshot.data.userData[index].id.toString(), Global.userResponse.userDetails.id.toString()).then((value){
                                                        if(value==200){
                                                          print('hogya');
                                                          dialog.hide();
                                                          Fluttertoast.showToast(msg: 'You have Successfully Purchased Number',toastLength: Toast.LENGTH_SHORT);
                                                        }
                                                        else{
                                                          print('nahi hoa');
                                                        }
                                                      });
                                                    }).catchError(setError);

                                                    // Navigator.push(
                                                    //     context,
                                                    //     SlideRightRoute(
                                                    //         page: StripPayment()));
                                                  }),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: 10,)
                                    ],
                                  ),
                                ),
                                width: screenwidth * 0.85,
                                height: screenheight * 0.1,
                              );
                            }),
                      );
                    }
                    else if(snapshot.hasError){
                      return Container(child: CircularProgressIndicator(backgroundColor: Colors.blueAccent,));
                    }
                    return CircularProgressIndicator();

                  }),
            ),
            SizedBox(
              height: screenheight * 0.05,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text(
                    "PREMIUM PACKS",
                    style: TextStyle(
                        color: Theme.of(context).canvasColor,
                        fontSize: screenwidth * 0.04),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(

              child: FutureBuilder<getPremiumPkgModel>(
                  future: API.getpremiumpkg(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Container(
                        height: 220,
                        width: screenwidth * 0.85,
                        decoration: BoxDecoration(
                            color: Theme.of(context).cardColor,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: snapshot.data.userData.length,
                            scrollDirection: Axis.vertical,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                // decoration: BoxDecoration(
                                //     borderRadius: BorderRadius.circular(20)
                                // ),
                                child: Padding(
                                  padding:
                                  EdgeInsets.only(left: screenwidth * 0.03),
                                  child: Row(
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                snapshot.data.userData[index].pCredits,
                                                style: TextStyle(
                                                    fontSize: screenwidth * 0.04,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                              Text(
                                                "Credits",
                                                style: TextStyle(
                                                  fontSize: screenwidth * 0.04,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            snapshot.data.userData[index].pName,
                                            style: TextStyle(
                                                fontSize: screenwidth * 0.035,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                     Spacer(),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: screenwidth * 0.02),
                                            child: SizedBox(
                                              height: screenheight * 0.07,
                                              width: screenwidth * 0.25,
                                              child: FlatButton(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                      BorderRadius.circular(12),
                                                      side: BorderSide(
                                                          color: Theme.of(context)
                                                              .cardColor)),
                                                  color: Colors.white,
                                                  child: Text(
                                                    snapshot.data.userData[index].pPrize,
                                                    style: TextStyle(
                                                      fontSize: screenwidth * 0.04,
                                                      color: Theme.of(context)
                                                          .cardColor,
                                                    ),
                                                  ),
                                                  onPressed: () {
                                                    // Navigator.push(
                                                    //     context,
                                                    //     SlideRightRoute(
                                                    //         page: IncreaseBalance()));
                                                  }),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: 10,),
                                    ],
                                  ),
                                ),
                                width: screenwidth * 0.85,
                                height: screenheight * 0.1,
                              );
                            }),
                      );
                    }
                    else if(snapshot.hasError){
                      return Container(child: CircularProgressIndicator(backgroundColor: Colors.blueAccent,));
                    }
                    return CircularProgressIndicator();

                  }),
            ),
            // Container(
            //   child: Padding(
            //     padding: EdgeInsets.only(left: screenwidth * 0.03),
            //     child: Row(
            //       children: [
            //         Column(
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Row(
            //               children: [
            //                 Text(
            //                   "5500",
            //                   style: TextStyle(
            //                       fontSize: screenwidth * 0.04,
            //                       color: Colors.white,
            //                       fontWeight: FontWeight.bold),
            //                 ),
            //                 Text(
            //                   "Credits",
            //                   style: TextStyle(
            //                     fontSize: screenwidth * 0.04,
            //                     color: Colors.white,
            //                   ),
            //                 ),
            //               ],
            //             ),
            //             Text(
            //               "Stater Credit Pack",
            //               style: TextStyle(
            //                   fontSize: screenwidth * 0.035,
            //                   color: Colors.white),
            //             ),
            //           ],
            //         ),
            //         SizedBox(
            //           width: screenwidth * 0.17,
            //         ),
            //         Row(
            //           children: [
            //             Padding(
            //               padding: EdgeInsets.only(left: screenwidth * 0.02),
            //               child: SizedBox(
            //                 height: screenheight * 0.07,
            //                 width: screenwidth * 0.25,
            //                 child: FlatButton(
            //                     shape: RoundedRectangleBorder(
            //                         borderRadius: BorderRadius.circular(12),
            //                         side: BorderSide(
            //                             color: Theme.of(context).cardColor)),
            //                     color: Colors.white,
            //                     child: Text(
            //                       "Rs 220",
            //                       style: TextStyle(
            //                         fontSize: screenwidth * 0.03,
            //                         color: Theme.of(context).cardColor,
            //                       ),
            //                     ),
            //                     onPressed: () {
            //                       // Navigator.push(
            //                       //     context,
            //                       //     SlideRightRoute(
            //                       //         page: IncreaseBalance()));
            //                     }),
            //               ),
            //             ),
            //           ],
            //         )
            //       ],
            //     ),
            //   ),
            //   width: screenwidth * 0.85,
            //   height: screenheight * 0.1,
            //   decoration: BoxDecoration(
            //     color: Theme.of(context).cardColor,
            //     borderRadius: BorderRadius.only(
            //         topLeft: Radius.circular(15.0),
            //         topRight: Radius.circular(15.0)),
            //   ),
            // ),
            //
            // Container(
            //   child: Padding(
            //     padding: EdgeInsets.only(left: screenwidth * 0.03),
            //     child: Row(
            //       children: [
            //         Column(
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Row(
            //               children: [
            //                 Text(
            //                   "5500",
            //                   style: TextStyle(
            //                       fontSize: screenwidth * 0.04,
            //                       color: Colors.white,
            //                       fontWeight: FontWeight.bold),
            //                 ),
            //                 Text(
            //                   "Credits",
            //                   style: TextStyle(
            //                     fontSize: screenwidth * 0.04,
            //                     color: Colors.white,
            //                   ),
            //                 ),
            //               ],
            //             ),
            //             Text(
            //               "Stater Credit Pack",
            //               style: TextStyle(
            //                   fontSize: screenwidth * 0.035,
            //                   color: Colors.white),
            //             ),
            //           ],
            //         ),
            //         SizedBox(
            //           width: screenwidth * 0.17,
            //         ),
            //         Row(
            //           children: [
            //             Padding(
            //               padding: EdgeInsets.only(left: screenwidth * 0.02),
            //               child: SizedBox(
            //                 height: screenheight * 0.07,
            //                 width: screenwidth * 0.25,
            //                 child: FlatButton(
            //                     shape: RoundedRectangleBorder(
            //                         borderRadius: BorderRadius.circular(12),
            //                         side: BorderSide(
            //                             color: Theme.of(context).cardColor)),
            //                     color: Colors.white,
            //                     child: Text(
            //                       "Rs 220",
            //                       style: TextStyle(
            //                         fontSize: screenwidth * 0.03,
            //                         color: Theme.of(context).cardColor,
            //                       ),
            //                     ),
            //                     onPressed: () {
            //                       // Navigator.push(
            //                       //     context,
            //                       //     SlideRightRoute(
            //                       //         page: IncreaseBalance()));
            //                     }),
            //               ),
            //             ),
            //           ],
            //         )
            //       ],
            //     ),
            //   ),
            //   width: screenwidth * 0.85,
            //   height: screenheight * 0.1,
            //   decoration: BoxDecoration(
            //     color: Theme.of(context).cardColor,
            //   ),
            // ),
            // // Container(
            // //
            // //   child: Divider(
            // //     endIndent: 30,
            // //     indent: 30,
            // //     color: Colors.black,
            // //     height: 1,
            // //     thickness: 1,
            // //   ),
            // // ),
            // Container(
            //   child: Padding(
            //     padding: EdgeInsets.only(left: screenwidth * 0.03),
            //     child: Row(
            //       children: [
            //         Column(
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Row(
            //               children: [
            //                 Text(
            //                   "5500",
            //                   style: TextStyle(
            //                       fontSize: screenwidth * 0.04,
            //                       color: Colors.white,
            //                       fontWeight: FontWeight.bold),
            //                 ),
            //                 Text(
            //                   "Credits",
            //                   style: TextStyle(
            //                     fontSize: screenwidth * 0.04,
            //                     color: Colors.white,
            //                   ),
            //                 ),
            //               ],
            //             ),
            //             Text(
            //               "Stater Credit Pack",
            //               style: TextStyle(
            //                   fontSize: screenwidth * 0.035,
            //                   color: Colors.white),
            //             ),
            //           ],
            //         ),
            //         SizedBox(
            //           width: screenwidth * 0.17,
            //         ),
            //         Row(
            //           children: [
            //             Padding(
            //               padding: EdgeInsets.only(left: screenwidth * 0.02),
            //               child: SizedBox(
            //                 height: screenheight * 0.07,
            //                 width: screenwidth * 0.25,
            //                 child: FlatButton(
            //                     shape: RoundedRectangleBorder(
            //                         borderRadius: BorderRadius.circular(12),
            //                         side: BorderSide(
            //                             color: Theme.of(context).cardColor)),
            //                     color: Colors.white,
            //                     child: Text(
            //                       "Rs 220",
            //                       style: TextStyle(
            //                         fontSize: screenwidth * 0.03,
            //                         color: Theme.of(context).cardColor,
            //                       ),
            //                     ),
            //                     onPressed: () {}),
            //               ),
            //             ),
            //           ],
            //         )
            //       ],
            //     ),
            //   ),
            //   width: screenwidth * 0.85,
            //   height: screenheight * 0.1,
            //   decoration: BoxDecoration(
            //     color: Theme.of(context).cardColor,
            //     borderRadius: BorderRadius.only(
            //         bottomLeft: Radius.circular(15.0),
            //         bottomRight: Radius.circular(15.0)),
            //   ),
            // ),
            // SizedBox(
            //   height: screenheight * 0.04,
            // ),
            // Row(
            //   children: [
            //     Padding(
            //       padding: EdgeInsets.only(left: 30),
            //       child: Text(
            //         "PREMIUM PACKS",
            //         style: TextStyle(
            //             color: Theme.of(context).canvasColor,
            //             fontSize: screenwidth * 0.04),
            //       ),
            //     ),
            //   ],
            // ),
            // SizedBox(
            //   height: screenheight * 0.02,
            // ),
            // Container(
            //   child: Padding(
            //     padding: EdgeInsets.only(left: screenwidth * 0.03),
            //     child: Row(
            //       children: [
            //         Column(
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Row(
            //               children: [
            //                 Text(
            //                   "5500",
            //                   style: TextStyle(
            //                       fontSize: screenwidth * 0.04,
            //                       color: Colors.white,
            //                       fontWeight: FontWeight.bold),
            //                 ),
            //                 Text(
            //                   "Credits",
            //                   style: TextStyle(
            //                     fontSize: screenwidth * 0.04,
            //                     color: Colors.white,
            //                   ),
            //                 ),
            //               ],
            //             ),
            //             Text(
            //               "Stater Credit Pack",
            //               style: TextStyle(
            //                   fontSize: screenwidth * 0.035,
            //                   color: Colors.white),
            //             ),
            //           ],
            //         ),
            //         SizedBox(
            //           width: screenwidth * 0.17,
            //         ),
            //         Row(
            //           children: [
            //             Padding(
            //               padding: EdgeInsets.only(left: screenwidth * 0.02),
            //               child: SizedBox(
            //                 height: screenheight * 0.07,
            //                 width: screenwidth * 0.25,
            //                 child: FlatButton(
            //                     shape: RoundedRectangleBorder(
            //                         borderRadius: BorderRadius.circular(12),
            //                         side: BorderSide(
            //                             color: Theme.of(context).cardColor)),
            //                     color: Colors.white,
            //                     child: Text(
            //                       "Rs 220",
            //                       style: TextStyle(
            //                         fontSize: screenwidth * 0.03,
            //                         color: Theme.of(context).cardColor,
            //                       ),
            //                     ),
            //                     onPressed: () {
            //                       // Navigator.push(
            //                       //     context,
            //                       //     SlideRightRoute(
            //                       //         page: IncreaseBalance()));
            //                     }),
            //               ),
            //             ),
            //           ],
            //         )
            //       ],
            //     ),
            //   ),
            //   width: screenwidth * 0.85,
            //   height: screenheight * 0.1,
            //   decoration: BoxDecoration(
            //     color: Theme.of(context).cardColor,
            //     borderRadius: BorderRadius.only(
            //         topLeft: Radius.circular(15.0),
            //         topRight: Radius.circular(15.0)),
            //   ),
            // ),
            // Container(
            //   child: Padding(
            //     padding: EdgeInsets.only(left: screenwidth * 0.03),
            //     child: Row(
            //       children: [
            //         Column(
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Row(
            //               children: [
            //                 Text(
            //                   "5500",
            //                   style: TextStyle(
            //                       fontSize: screenwidth * 0.04,
            //                       color: Colors.white,
            //                       fontWeight: FontWeight.bold),
            //                 ),
            //                 Text(
            //                   "Credits",
            //                   style: TextStyle(
            //                     fontSize: screenwidth * 0.04,
            //                     color: Colors.white,
            //                   ),
            //                 ),
            //               ],
            //             ),
            //             Text(
            //               "Stater Credit Pack",
            //               style: TextStyle(
            //                   fontSize: screenwidth * 0.035,
            //                   color: Colors.white),
            //             ),
            //           ],
            //         ),
            //         SizedBox(
            //           width: screenwidth * 0.17,
            //         ),
            //         Row(
            //           children: [
            //             Padding(
            //               padding: EdgeInsets.only(left: screenwidth * 0.02),
            //               child: SizedBox(
            //                 height: screenheight * 0.07,
            //                 width: screenwidth * 0.25,
            //                 child: FlatButton(
            //                     shape: RoundedRectangleBorder(
            //                         borderRadius: BorderRadius.circular(12),
            //                         side: BorderSide(
            //                             color: Theme.of(context).cardColor)),
            //                     color: Colors.white,
            //                     child: Text(
            //                       "Rs 220",
            //                       style: TextStyle(
            //                         fontSize: screenwidth * 0.03,
            //                         color: Theme.of(context).cardColor,
            //                       ),
            //                     ),
            //                     onPressed: () {
            //                       // Navigator.push(
            //                       //     context,
            //                       //     SlideRightRoute(
            //                       //         page: IncreaseBalance()));
            //                     }),
            //               ),
            //             ),
            //           ],
            //         )
            //       ],
            //     ),
            //   ),
            //   width: screenwidth * 0.85,
            //   height: screenheight * 0.1,
            //   decoration: BoxDecoration(
            //     color: Theme.of(context).cardColor,
            //   ),
            // ),
            // Container(
            //   child: Padding(
            //     padding: EdgeInsets.only(left: screenwidth * 0.03),
            //     child: Row(
            //       children: [
            //         Column(
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Row(
            //               children: [
            //                 Text(
            //                   "5500",
            //                   style: TextStyle(
            //                       fontSize: screenwidth * 0.04,
            //                       color: Colors.white,
            //                       fontWeight: FontWeight.bold),
            //                 ),
            //                 Text(
            //                   "Credits",
            //                   style: TextStyle(
            //                     fontSize: screenwidth * 0.04,
            //                     color: Colors.white,
            //                   ),
            //                 ),
            //               ],
            //             ),
            //             Text(
            //               "Stater Credit Pack",
            //               style: TextStyle(
            //                   fontSize: screenwidth * 0.035,
            //                   color: Colors.white),
            //             ),
            //           ],
            //         ),
            //         SizedBox(
            //           width: screenwidth * 0.17,
            //         ),
            //         Row(
            //           children: [
            //             Padding(
            //               padding: EdgeInsets.only(left: screenwidth * 0.02),
            //               child: SizedBox(
            //                 height: screenheight * 0.07,
            //                 width: screenwidth * 0.25,
            //                 child: FlatButton(
            //                     shape: RoundedRectangleBorder(
            //                         borderRadius: BorderRadius.circular(12),
            //                         side: BorderSide(
            //                             color: Theme.of(context).cardColor)),
            //                     color: Colors.white,
            //                     child: Text(
            //                       "Rs 220",
            //                       style: TextStyle(
            //                         fontSize: screenwidth * 0.03,
            //                         color: Theme.of(context).cardColor,
            //                       ),
            //                     ),
            //                     onPressed: () {
            //                       // Navigator.push(
            //                       //     context,
            //                       //     SlideRightRoute(
            //                       //         page: IncreaseBalance()));
            //                     }),
            //               ),
            //             ),
            //           ],
            //         )
            //       ],
            //     ),
            //   ),
            //   width: screenwidth * 0.85,
            //   height: screenheight * 0.1,
            //   decoration: BoxDecoration(
            //     color: Theme.of(context).cardColor,
            //     borderRadius: BorderRadius.only(
            //         bottomLeft: Radius.circular(15.0),
            //         bottomRight: Radius.circular(15.0)),
            //   ),
            // ),
            SizedBox(
              height: screenheight * 0.02,
            ),
          ],
        ),
      ),
    );
  }

  void setError(dynamic error) {
    _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text(error.toString())));
    setState(() {
      _error = error.toString();
    });
  }
}
