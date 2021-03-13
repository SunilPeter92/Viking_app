import 'package:flutter/material.dart';
import '../Widgets/AdressRequiredCard.dart';
import '../Widgets/IdRequiredCard.dart';
import '../Widgets/MyButtonRaised.dart';
import '../Animation/Slider.dart';
import 'ChooseAreaCode.dart';

class SelectState extends StatefulWidget {
  bool isAdressRequired, isIdRequired;
  String countryname;

  SelectState(
      {@required this.isAdressRequired,
      @required this.countryname,
      @required this.isIdRequired});

  @override
  _SelectStateState createState() => _SelectStateState();
}

class _SelectStateState extends State<SelectState> {
  @override
  void initState() {
    // TODO: implement initState

    if (widget.isAdressRequired) {
      Future.delayed(Duration(milliseconds: 500)).then((value) => {
            showDialog(
                context: context,
                child: new AlertDialog(
                  title: Center(child: new Text("Address Required")),
                  content: Container(
                    height: MediaQuery.of(context).size.height / 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: new Text(
                            widget.countryname +
                                " local numbers require identity verification by law. You will be asked to upload documents.",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        MyButtonRaised(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          title: "Okay",
                        )
                      ],
                    ),
                  ),
                ))
          });
    }

    if (widget.isIdRequired) {
      Future.delayed(Duration(milliseconds: 500)).then((value) => {
            showDialog(
                context: context,
                child: new AlertDialog(
                  title: Center(child: new Text("ID Required")),
                  content: Container(
                    height: MediaQuery.of(context).size.height / 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: new Text(
                            widget.countryname +
                                " local numbers require identity verification by law. You will be asked to upload documents.",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        MyButtonRaised(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          title: "Okay",
                        )
                      ],
                    ),
                  ),
                ))
          });
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose State", style: TextStyle(color: Colors.white)),
        leading: BackButton(
          color: Colors.white,
        ),
      ),
      body: ListView(
        children: [
          AddressRequired(
            countryname: widget.countryname,
            isAdressRequired: widget.isAdressRequired,
          ),
          IdRequiredCard(
            countryname: widget.countryname,
            isidrequired: widget.isIdRequired,
          ),
          Card(
            child: ListTile(
              leading: Text(
                "Alabama (AL)",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    SlideRightRoute(
                        page: ChooseAreaCode(
                      countryname: widget.countryname,
                    )));
              },
              trailing: Icon(
                Icons.arrow_forward_rounded,
                color: Colors.orange,
                size: 30,
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Text(
                "Alaska (AK)",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    SlideRightRoute(
                        page: ChooseAreaCode(
                      countryname: widget.countryname,
                    )));
              },
              trailing: Icon(
                Icons.arrow_forward_rounded,
                color: Colors.orange,
                size: 30,
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Text(
                "Arizona (AZ)",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    SlideRightRoute(
                        page: ChooseAreaCode(
                      countryname: widget.countryname,
                    )));
              },
              trailing: Icon(
                Icons.arrow_forward_rounded,
                color: Colors.orange,
                size: 30,
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Text(
                "California (CA)",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    SlideRightRoute(
                        page: ChooseAreaCode(
                      countryname: widget.countryname,
                    )));
              },
              trailing: Icon(
                Icons.arrow_forward_rounded,
                color: Colors.orange,
                size: 30,
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Text(
                "Florida (FL)",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    SlideRightRoute(
                        page: ChooseAreaCode(
                      countryname: widget.countryname,
                    )));
              },
              trailing: Icon(
                Icons.arrow_forward_rounded,
                color: Colors.orange,
                size: 30,
              ),
            ),
          )
        ],
      ),
    );
  }
}