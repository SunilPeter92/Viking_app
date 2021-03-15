import 'package:flutter/material.dart';

class SearchContacts extends StatefulWidget {
  @override
  _SearchContactsState createState() => _SearchContactsState();
}

class _SearchContactsState extends State<SearchContacts> {
  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenwidth * 0.1),
        child: Column(
          children: [
            SizedBox(
              height: screenheight * 0.1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Contacts",
                  style: TextStyle(
                      fontSize: screenwidth * 0.07, color: Colors.orange),
                ),
                IconButton(
                  icon: Icon(Icons.add_circle_outline_outlined,
                      color: Colors.orange, size: screenwidth * 0.09),
                  onPressed: () {},
                )
              ],
            ),
            SizedBox(
              height: screenwidth * 0.1,
            ),
            TextField(
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.grey[100],
                  hintText: 'Find Contacts',
                  hintStyle: TextStyle(letterSpacing: 2, color: Colors.grey),

                  // focusedBorder: InputBorder.none,
                  // enabledBorder: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Colors.orange[50]),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Colors.orange[50]),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
