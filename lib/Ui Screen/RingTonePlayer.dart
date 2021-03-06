// import 'package:flutter/material.dart';
//
// class RingtonePlayer extends StatefulWidget {
//   @override
//   _RingtonePlayerState createState() => _RingtonePlayerState();
// }
//
// class _RingtonePlayerState extends State<RingtonePlayer> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Ringtone player'),
//         ),
//         body: Center(
//           child: Column(
//             children: <Widget>[
//               Padding(
//                 padding: EdgeInsets.all(8),
//                 child: RaisedButton(
//                   child: const Text('playAlarm'),
//                   onPressed: () {
//                     FlutterRingtonePlayer.playAlarm();
//                   },
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.all(8),
//                 child: RaisedButton(
//                   child: const Text('playAlarm asAlarm: false'),
//                   onPressed: () {
//                     FlutterRingtonePlayer.playAlarm(asAlarm: false);
//                   },
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.all(8),
//                 child: RaisedButton(
//                   child: const Text('playNotification'),
//                   onPressed: () {
//                     FlutterRingtonePlayer.playNotification();
//                   },
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.all(8),
//                 child: RaisedButton(
//                   child: const Text('playRingtone'),
//                   onPressed: () {
//                     FlutterRingtonePlayer.playRingtone();
//                   },
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.all(8),
//                 child: RaisedButton(
//                   child: const Text('play'),
//                   onPressed: () {
//                     FlutterRingtonePlayer.play(
//                       android: AndroidSounds.notification,
//                       ios: IosSounds.glass,
//                       looping: true,
//                       volume: 1.0,
//                     );
//                   },
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.all(8),
//                 child: RaisedButton(
//                   child: const Text('stop'),
//                   onPressed: () {
//                     FlutterRingtonePlayer.stop();
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
// }
