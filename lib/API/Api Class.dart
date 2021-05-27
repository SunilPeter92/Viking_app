import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:viking/Global/GlobalClass.dart';
import 'package:http/http.dart' as http;
import 'package:viking/Model/GetCountryModel.dart';
import 'package:viking/Model/getstateModel.dart';
import 'package:viking/Model/Number.dart';
import 'package:viking/Model/GetPkg.dart';
import 'package:viking/Model/GetPremiumPkg.dart';
import 'package:viking/Model/GetUserModel.dart';
import 'package:viking/Ui%20Screen/SplashScreen.dart';

import '../Ui Screen/DialScreen.dart';
import '../Ui Screen/LoginPage.dart';
import '../Ui Screen/Register.dart';
import 'package:viking/Model//UserResponse.dart';

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
        Global.userResponse=UserResponse.fromJson(response.data);
        print(Global.userResponse.userDetails.balance);

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
  static Future<int> BuyNumber(BuildContext context, String phoneNumber, String user_id , ) async {
    FormData data = FormData.fromMap({
      "phoneNumber": phoneNumber,
      "user_id": user_id,
    });

    Dio dio = new Dio();

    Response response=await dio.post(Global.baseurl + "buy_number", data: data);
    return response.statusCode;
  }
  static Future<int> BuyPackage(BuildContext context, String p_id, String user_id , ) async {
    FormData data = FormData.fromMap({
      "p_id": p_id,
      "user_id": user_id,
    });

    Dio dio = new Dio();

    Response response=await dio.post(Global.baseurl + "buy_package", data: data);
    return response.statusCode;
  }
  static Future getUsers() {
    var url = Global.baseurl + "get_country";
    return http.get(url);
  }
  static Future<Numbers> getNumber(String code) async {
    var url = Global.baseurl + "get_number?country_code=$code";
    http.Response response=await http.get(url);
    if(response.statusCode==201){
      return Numbers.fromJson(json.decode(response.body));
    }
  return Numbers();
  }

  static Future<GetUserModel> GetUser(int id) async {
    try {
      final http.Response response =
      await http.get(Global.baseurl + "get_user_details/$id"  );


      if (response.statusCode == 200) {
        return GetUserModel.fromJson(jsonDecode(response.body));
      }
    } catch (e) {
      throw Exception("Unknown Error");
    }
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
