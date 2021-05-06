import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:viking/Ui%20Screen/ColorProvider.dart';
import 'package:viking/Ui%20Screen/LoginPage.dart';
import 'package:viking/Ui%20Screen/SplashScreen.dart';
import 'package:viking/Ui%20Screen/StripPayment.dart';

import 'Ui Screen/Register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: Consumer<ThemeNotifier>(
        builder: (context, ThemeNotifier notifier, child) {

          return MaterialApp(
            title: 'Flutter Theme Provider',
            theme:( notifier.status == 0) ? light:( notifier.status == 1)? dark :( notifier.status == 2)? green :( notifier.status == 3)? brown :( notifier.status == 4)? red :light  ,
            home: Splash(),
          );
        } ,
      ),
    );


    // return MaterialApp(
    //   title: 'Flutter Demo',
    //   theme: ThemeData(
    //     fontFamily: 'Comfortaa',
    //     // primarySwatch: Colors.fromRGBO(48, 48, 66, 100),
    //     accentColor: Color.fromRGBO(48, 48, 66, 10),
    //     cardColor: Color.fromRGBO(71, 174, 237, 1),
    //    // cardColor: Color.fromRGBO(71, 174, 237, 1),
    //     canvasColor: Color.fromRGBO(134, 135, 145, 1),
    //     visualDensity: VisualDensity.adaptivePlatformDensity,
    //   ),
    //   home: Splash(),
    //   //StripPayment(),
    //    //
    // );
  }
}
