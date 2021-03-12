import 'package:flutter/material.dart';
import 'package:viking/Widgets/CountryFavouriteTile.dart';

class InternationalRates extends StatefulWidget {
  @override
  _InternationalRatesState createState() => _InternationalRatesState();
}

class _InternationalRatesState extends State<InternationalRates> {
  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.white,
        ),
        title: Text(
          "International Rates",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: screenheight * 0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: screenheight * 0.1,
                  width: screenwidth * 0.4,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side:
                            BorderSide(color: Theme.of(context).primaryColor)),
                    color: Colors.orange,
                    child: Text(
                      "Voice Rates \n Credit/min",
                      style: TextStyle(
                          fontSize: screenwidth * 0.05, color: Colors.white),
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  height: screenheight * 0.1,
                  width: screenwidth * 0.4,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side:
                            BorderSide(color: Theme.of(context).primaryColor)),
                    color: Colors.white,
                    child: Text(
                      "Text Rates \nCredit/SMS",
                      style: TextStyle(
                          fontSize: screenwidth * 0.05, color: Colors.orange),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            SizedBox(
              height: screenheight * 0.03,
            ),
            Center(
              child: Text(
                "Prices may very depending on the carriers involved ",
                style: TextStyle(color: Colors.grey[600]),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: screenwidth,
              color: Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "FAVOURITES",
                  style: TextStyle(),
                ),
              ),
            ),
            ListView(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              children: [
                CountryFavouriteTile(
                  flag: "US",
                  title: "USA ( +1 )",
                  trailing: "Use Minutes",
                  onTap: () {},
                ),
                CountryFavouriteTile(
                  flag: "CA",
                  title: "CANADA ( +1 )",
                  trailing: "25 - 606 Credits",
                  onTap: () {},
                ),
                CountryFavouriteTile(
                  onTap: () {},
                  flag: "gb",
                  title: "United Kingdom ( +1 )",
                  trailing: "25 - 60 Credits",
                ),
                CountryFavouriteTile(
                  onTap: () {},
                  flag: "au",
                  title: "Austrailia ( +61 )",
                  trailing: "25 - 60 Credits",
                ),
                CountryFavouriteTile(
                  onTap: () {},
                  flag: "at",
                  title: "Austria ( +43 )",
                  trailing: "25 - 60 Credits",
                ),
                CountryFavouriteTile(
                  onTap: () {},
                  flag: "be",
                  title: "Belgium ( +32 )",
                  trailing: "25 - 60 Credits",
                ),
                CountryFavouriteTile(
                  onTap: () {},
                  flag: "br",
                  title: "brazil ( +55 )",
                  trailing: "25 - 60 Credits",
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
