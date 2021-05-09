import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:viking/Global/GlobalClass.dart';
import 'package:http/http.dart' as http;
import 'package:viking/Model/GetCountryModel.dart';
import 'package:viking/Model/getstateModel.dart';
import 'package:viking/Model/GetPkg.dart';
import 'package:viking/Model/GetPremiumPkg.dart';

import '../Ui Screen/DialScreen.dart';
import '../Ui Screen/LoginPage.dart';
import '../Ui Screen/Register.dart';

class API{
  static Login(BuildContext context, email, password , ) {
    FormData data = FormData.fromMap({
      "email": email,
      "password": password,
    });

    Dio dio = new Dio();

    dio.post(Global.baseurl + "user_login", data: data).then((response) {
      print(response.statusCode);
      if (response.statusCode == 201) {
        LoginPage.pr.hide();
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DialScreen()),
        );
      } else if (response.statusCode == 202) {
        Fluttertoast.showToast(
            msg: "Email and password does't match!",
            toastLength: Toast.LENGTH_LONG);
      }
    }).catchError((error) => print(error));
  }
  static Register(BuildContext context, email, password , ) {
    FormData data = FormData.fromMap({
      "email": email,
      "password": password,
    });

    Dio dio = new Dio();

    dio.post(Global.baseurl + "user_register", data: data).then((response) {
      print(response.statusCode);
      if (response.statusCode == 201) {
        RegisterPage.pr.hide();
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
        );
      } else if (response.statusCode == 202) {
        Fluttertoast.showToast(
            msg: "Email and password does't match!",
            toastLength: Toast.LENGTH_LONG);
      }
    }).catchError((error) => print(error));
  }

  static Future getUsers() {
    var url = Global.baseurl + "get_country";
    return http.get(url);
  }

  static Future<GetPkgModel> getpkg() async {
    try {
      final http.Response response =
      await http.get(Global.baseurl + "get_packages"  );

      if (response.statusCode == 200) {
        return GetPkgModel.fromJson(jsonDecode(response.body));
      }
    } catch (e) {
      throw Exception("Unknown Error");
    }
  }

  static Future<getPremiumPkgModel> getpremiumpkg() async {
    try {
      final http.Response response =
      await http.get(Global.baseurl + "get_p_packages"  );

      if (response.statusCode == 200) {
        return getPremiumPkgModel.fromJson(jsonDecode(response.body));
      }
    } catch (e) {
      throw Exception("Unknown Error");
    }
  }
}