// import 'package:flex_color_picker/flex_color_picker.dart';
// import 'package:flutter/material.dart';

// class RenewPhone extends StatefulWidget {
//   @override
//   _RenewPhoneState createState() => _RenewPhoneState();
// }

// class _RenewPhoneState extends State<RenewPhone> {
//   double screenwidth, screenheight;
//   var screenPickerColor = Colors.white;
//   @override
//   Widget build(BuildContext context) {
//     screenwidth = MediaQuery.of(context).size.width;
//     screenheight = MediaQuery.of(context).size.height;
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Phone Number", style: TextStyle(color: Colors.white)),
//         leading: BackButton(
//           color: Colors.white,
//         ),
//       ),
//       body: Padding(
//         padding: EdgeInsets.symmetric(horizontal: screenwidth * 0.07),
//         child: Column(
//           children: [
//             Row(
//               children: [
//                 Padding(
//                   padding: EdgeInsets.all(screenwidth * 0.05),
//                   child: Text(
//                     "Supports calling, SMS & MMS",
//                     style: TextStyle(
//                         fontSize: screenwidth * 0.045, color: Colors.grey[600]),
//                   ),
//                 ),
//               ],
//             ),
//             Divider(thickness: 1, color: Colors.grey[600]),
//             SizedBox(
//               height: 10,
//             ),
//             Row(
//               children: [
//                 Padding(
//                   padding: EdgeInsets.all(screenwidth * 0.05),
//                   child: Text(
//                     "Expire : Feb 02, 12:00 PM",
//                     style: TextStyle(
//                         fontSize: screenwidth * 0.045, color: Colors.grey[600]),
//                   ),
//                 ),
//                 SizedBox(
//                   height: screenheight * 0.07,
//                   width: screenwidth * 0.25,
//                   child: FlatButton(
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(12),
//                           side: BorderSide(
//                               color: Theme.of(context).primaryColor)),
//                       color: Colors.orange,
//                       child: Text(
//                         "Extend",
//                         style: TextStyle(
//                             fontSize: screenwidth * 0.047, color: Colors.white),
//                       ),
//                       onPressed: () {}),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Divider(thickness: 1, color: Colors.grey[600]),
//             Row(
//               children: [
//                 Padding(
//                   padding: EdgeInsets.all(screenwidth * 0.05),
//                   child: Text(
//                     "CHANGE COLOR",
//                     style: TextStyle(
//                         fontSize: screenwidth * 0.045, color: Colors.grey[600]),
//                   ),
//                 ),
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 ColorIndicator(
//                   onSelect: () {},
//                   width: 44,
//                   height: 44,
//                   borderRadius: 25,
//                   borderColor: Colors.orange,
//                   hasBorder: true,
//                   color: Colors.orange,
//                 ),
//                 ColorIndicator(
//                   onSelect: () {},
//                   width: 44,
//                   height: 44,
//                   borderRadius: 25,
//                   borderColor: Colors.purple,
//                   hasBorder: true,
//                   color: Colors.white,
//                 ),
//                 ColorIndicator(
//                   onSelect: () {},
//                   width: 44,
//                   height: 44,
//                   borderRadius: 25,
//                   borderColor: Colors.green,
//                   hasBorder: true,
//                   color: Colors.white,
//                 ),
//                 ColorIndicator(
//                   onSelect: () {},
//                   width: 44,
//                   height: 44,
//                   borderRadius: 25,
//                   borderColor: Colors.brown,
//                   hasBorder: true,
//                   color: Colors.white,
//                 ),
//                 ColorIndicator(
//                   onSelect: () {},
//                   width: 44,
//                   height: 44,
//                   borderRadius: 25,
//                   borderColor: Colors.brown,
//                   hasBorder: true,
//                   color: Colors.white,
//                 ),
//               ],
//             ),
//             Row(
//               children: [
//                 Padding(
//                   padding: EdgeInsets.all(screenwidth * 0.05),
//                   child: Text(
//                     "CALL SETTINGS",
//                     style: TextStyle(
//                         fontSize: screenwidth * 0.045, color: Colors.grey[600]),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: screenheight * 0.05,
//             ),
//             Container(
//               decoration: BoxDecoration(
//                 color: Colors.grey[200],
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(25.0),
//                   topRight: Radius.circular(25.0), //
//                 ),
//               ),
//               child: Column(
//                 children: [
//                   Row(
//                     children: [
//                       Text("Forwarding / Voice Mail",
//                           style: TextStyle(
//                               fontSize: screenwidth * 0.055,
//                               color: Colors.grey[500]))
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       Text("Set up call fowarding or \n voicemail",
//                           style: TextStyle(
//                               fontSize: screenwidth * 0.055,
//                               color: Colors.grey[500])),
//                       Row(
//                         children: [Text],
//                       ),
//                     ],
//                   )
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
