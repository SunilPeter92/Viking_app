import 'package:flutter/material.dart';
import 'package:viking/Ui%20Screen/RenewPhone.dart';

class PhoneNumberPopup extends StatefulWidget {
  @override
  _PhoneNumberPopupState createState() => _PhoneNumberPopupState();
}

class _PhoneNumberPopupState extends State<PhoneNumberPopup> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, right: 10 , left: 10 , top: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.circle , color: Colors.orange,),
              Text('Phoner Number', style: TextStyle(fontSize: 15),),
              InkWell(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RenewPhone()));
                  },
                  child: Icon(Icons.settings ,)),

            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 70),
            child: Row(
              children: [
                Icon(Icons.messenger_outline ,size: 15,),
                Text('Unread', style: TextStyle(fontSize: 11),),
                SizedBox(width: 5,),
                Text('0', style: TextStyle(fontSize: 11 , fontWeight: FontWeight.bold),),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 70),
            child: Row(
              children: [
                Icon(Icons.access_time_outlined ,size: 15,),
                Text('Expires', style: TextStyle(fontSize: 11),),
                SizedBox(width: 5,),
                Text('June 21, 3:02 PM', style: TextStyle(fontSize: 11 , fontWeight: FontWeight.bold),),

              ],
            ),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.add_circle_outline ,color: Colors.blueAccent),
              Text('Choose your own number', style: TextStyle(fontSize: 15 , color: Colors.blueAccent),),

            ],
          ),
        ],
      )
    );
  }
}
