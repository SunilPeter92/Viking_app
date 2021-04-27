import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:viking/API/Api%20Class.dart';
import 'package:viking/Model/GetCountryModel.dart';
import 'package:viking/Widgets/CountryListCard.dart';
import 'package:viking/Animation/Slider.dart';
import 'ActivateNumerScreen.dart';
import 'SelectState.dart';

class ChooseCountry extends StatefulWidget {
  @override
  _ChooseCountryState createState() => _ChooseCountryState();
}

class _ChooseCountryState extends State<ChooseCountry> {
  double width, height;
  final scaffoldState = GlobalKey<ScaffoldState>();

  // void showbottomsheet({String countryname, context}) {
  //   showBottomSheet(
  //       context: context,
  //       builder: (context) {
  //         return Container(
  //           height: height / 2.5,
  //           color: Colors.white,
  //           child: Center(
  //             child: Column(
  //               mainAxisAlignment: MainAxisAlignment.center,
  //               mainAxisSize: MainAxisSize.min,
  //               children: <Widget>[
  //                 Center(
  //                   child: Text(
  //                     "Choose Numbers Type",
  //                     style: TextStyle(
  //                       fontSize: width * 0.05,
  //                     ),
  //                   ),
  //                 ),
  //                 Divider(),
  //                 Card(
  //                   child: ListTile(
  //                     onTap: () {
  //                       Navigator.push(
  //                           context,
  //                           SlideRightRoute(
  //                               page: SelectState(
  //                             countryname: countryname,
  //                             isIdRequired: false,
  //                             isAdressRequired: true,
  //                           )));
  //                     },
  //                     title: Text("Local numbers"),
  //                     subtitle: Text("Supports calling only"),
  //                     trailing: Icon(
  //                       Icons.arrow_forward_outlined,
  //                       color: Colors.orange,
  //                     ),
  //                   ),
  //                 ),
  //                 Card(
  //                   child: ListTile(
  //                     onTap: () {
  //                       Navigator.push(
  //                           context,
  //                           SlideRightRoute(
  //                               page: SelectState(
  //                             countryname: countryname,
  //                             isIdRequired: false,
  //                             isAdressRequired: true,
  //                           )));
  //                     },
  //                     title: Text("Local numbers"),
  //                     subtitle: Text("Supports calling only"),
  //                     trailing: Icon(
  //                       Icons.arrow_forward_outlined,
  //                       color: Colors.orange,
  //                     ),
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ),
  //         );
  //       });
  // }
  var users = new List<GetCountryModel>();

  _getUsers() {
    API.getUsers().then((response) {
      setState(() {
        Iterable list = json.decode(response.body);
        users = list.map((model) => GetCountryModel.fromJson(model)).toList();
      });
    });
  }

  initState() {
    super.initState();
    _getUsers();
  }

  dispose() {
    super.dispose();
  }


  void showbottomsheet({String countryname, context}) {
    // Show BottomSheet here using the Scaffold state instead ot«f the Scaffold context
    scaffoldState.currentState.showBottomSheet((context) {
      return Container(
        height: height / 2.5,
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Center(
                child: Text(
                  "Choose Numbers Type",
                  style: TextStyle(
                    fontSize: width * 0.05,
                  ),
                ),
              ),
              Divider(),
              Card(
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        SlideRightRoute(
                            page: SelectState(
                          countryname: countryname,
                          isIdRequired: false,
                          isAdressRequired: true,
                        )));
                  },
                  title: Text("Local numbers"),
                  subtitle: Text("Supports calling only"),
                  trailing: Icon(
                    Icons.arrow_forward_outlined,
                    color: Colors.orange,
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        SlideRightRoute(
                            page: SelectState(
                          countryname: countryname,
                          isIdRequired: false,
                          isAdressRequired: true,
                        )));
                  },
                  title: Text("Local numbers"),
                  subtitle: Text("Supports calling only"),
                  trailing: Icon(
                    Icons.arrow_forward_outlined,
                    color: Colors.orange,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      key: scaffoldState,
      appBar: AppBar(
        backgroundColor: Theme.of(context).cardColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: Text(
          "Choose Country",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: Icon(Icons.close),
              color: Colors.white,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {

          return users.length != 0 ? CountryCard(
            // countrycode: "+1",
            countrycode: users[index].cData.phonecode,
            countryname: users[index].cData.name,
            flag: users[index].fData,
            calls: true,
            mms: true,
            sms: true,
            function: () {
              Navigator.push(
                  context,
                  SlideRightRoute(
                      page: SelectState(
                        isIdRequired: false,
                        countryname: "USA",
                        countryid: users[index].cData.id,
                        isAdressRequired: false,
                      )));
            },
          ) :CircularProgressIndicator ;
        },
      )
      // FutureBuilder<List<GetCountryModel>>(
      //     future: API.getcountry(),
      //     builder: (context, snapshot) {
      //       snapshot.hasData ?   print(snapshot.data.length):print('hello');
      //       return snapshot.hasData ? Container(
      //             height: MediaQuery.of(context).size.height / 1.09,
      //             child: ListView.builder(
      //                 physics: ClampingScrollPhysics(),
      //                 itemCount: snapshot.data.length,
      //                 scrollDirection: Axis.vertical,
      //                 itemBuilder: (BuildContext context, int index) {
      //                   return CountryCard(
      //                    // countrycode: "+1",
      //                     countrycode: snapshot.data[index].cData.phonecode,
      //                     countryname: snapshot.data[index].cData.name,
      //                     flag: snapshot.data[index].fData,
      //                     calls: true,
      //                     mms: true,
      //                     sms: true,
      //                     function: () {
      //                       Navigator.push(
      //                           context,
      //                           SlideRightRoute(
      //                               page: SelectState(
      //                             isIdRequired: false,
      //                             countryname: "USA",
      //                             isAdressRequired: false,
      //                           )));
      //                     },
      //                   );
      //                 })) :CircularProgressIndicator ;
      //
      //       // ),
      //       // CountryCard(
      //       //   countrycode: "+1",
      //       //   countryname: "Canada",
      //       //   flag: "ca",
      //       //   calls: true,
      //       //   mms: true,
      //       //   sms: true,
      //       //   function: () {
      //       //     Navigator.push(
      //       //         context,
      //       //         SlideRightRoute(
      //       //             page: SelectState(
      //       //           countryname: "Canada",
      //       //           isIdRequired: false,
      //       //           isAdressRequired: true,
      //       //         )));
      //       //   },
      //       // ),
      //       // CountryCard(
      //       //   countrycode: "+44",
      //       //   countryname: "United Kingdom",
      //       //   flag: "gb",
      //       //   calls: true,
      //       //   mms: false,
      //       //   sms: false,
      //       //   function: () {
      //       //     Navigator.push(
      //       //         context,
      //       //         SlideRightRoute(
      //       //             page: SelectState(
      //       //           countryname: "United Kingdom",
      //       //           isIdRequired: false,
      //       //           isAdressRequired: true,
      //       //         )));
      //       //
      //       //     //Navigator.push(context, SlideRightRoute(page: ActivateNumber()));
      //       //   },
      //       // ),
      //       // CountryCard(
      //       //   countrycode: "+61",
      //       //   countryname: "Austrailia",
      //       //   flag: "au",
      //       //   calls: true,
      //       //   mms: false,
      //       //   sms: true,
      //       //   function: () {
      //       //     //  Navigator.push(context, SlideRightRoute(page: ActivateNumber()));
      //       //     Navigator.push(
      //       //         context,
      //       //         SlideRightRoute(
      //       //             page: SelectState(
      //       //           isIdRequired: true,
      //       //           countryname: "USA",
      //       //           isAdressRequired: false,
      //       //         )));
      //       //   },
      //       // ),
      //       // CountryCard(
      //       //   countrycode: "+43",
      //       //   countryname: "Austira",
      //       //   flag: "at",
      //       //   calls: false,
      //       //   mms: false,
      //       //   sms: true,
      //       //   function: () {
      //       //     //    Navigator.push(context, SlideRightRoute(page: ActivateNumber()));
      //       //     Navigator.push(
      //       //         context,
      //       //         SlideRightRoute(
      //       //             page: SelectState(
      //       //           isIdRequired: true,
      //       //           countryname: "USA",
      //       //           isAdressRequired: false,
      //       //         )));
      //       //   },
      //       // ),
      //       // CountryCard(
      //       //   countrycode: "+32",
      //       //   countryname: "Belgium",
      //       //   flag: "be",
      //       //   calls: true,
      //       //   mms: false,
      //       //   sms: true,
      //       //   function: () {
      //       //     Navigator.push(
      //       //         context,
      //       //         SlideRightRoute(
      //       //             page: SelectState(
      //       //           isIdRequired: true,
      //       //           countryname: "USA",
      //       //           isAdressRequired: false,
      //       //         )));
      //       //   },
      //       // ),
      //       // CountryCard(
      //       //   countrycode: "+55",
      //       //   countryname: "Brazil",
      //       //   flag: "br",
      //       //   calls: true,
      //       //   mms: false,
      //       //   sms: true,
      //       //   function: () {
      //       //     showbottomsheet(context: context, countryname: "");
      //       //     //     Navigator.push(context, SlideRightRoute(page: ActivateNumber()));
      //       //   },
      //       // )
      //     }),
    );
  }
}
