import 'package:flutter/material.dart';
import 'package:viking/Animation/Slider.dart';
import 'package:viking/Ui%20Screen/DialScreen.dart';
import 'package:viking/Ui%20Screen/SearchContacts.dart';
import 'package:viking/Ui Screen/ContactsPage.dart';

class Contacts extends StatefulWidget {
  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom:
              TabBar(indicatorWeight: 5.0, indicatorColor: Colors.red, tabs: [
            Tab(
              child: Text("Contacts", style: TextStyle(color: Colors.white)),
            ),
            Tab(
              child: Text(
                "Phone Contacts",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ]),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
            ),
            color: Colors.white,
          ),
          title: Text(
            "Recent",
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context, SlideRightRoute(page: SearchContacts()));
                  },
                ))
          ],
        ),
        body: TabBarView(
          children: [
            ContactsPage(),

            // Center(
            //     child: Text(
            //   "You've got no contacts in \n    your Address Book",
            //   style: TextStyle(
            //     color: Colors.grey,
            //     fontSize: 20,
            //   ),
            // )),
            Center(
                child: Text(
              "You've got no contacts in \n    your Address Book",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            )),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
