import 'package:flutter/material.dart';

class RecentCalls extends StatefulWidget {
  @override
  _RecentCallsState createState() => _RecentCallsState();
}

class _RecentCallsState extends State<RecentCalls> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom:
              TabBar(indicatorWeight: 5.0, indicatorColor: Colors.red, tabs: [
            Tab(
              child: Text("ALL", style: TextStyle(color: Colors.white)),
            ),
            Tab(
              child: Text(
                "MISSED",
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
                icon: Icon(Icons.more_vert_rounded),
                color: Colors.white,
                onPressed: () {},
              ),
            )
          ],
        ),
        body: TabBarView(
          children: [
            Center(
                child: Text(
              "No Recent Calls",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            )),
            Center(
                child: Text(
              "No Recent Calls",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            )),
          ],
        ),
      ),
    );
  }
}
