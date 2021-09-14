import 'dart:async';
import 'dart:convert';
import 'package:agros/login_screen/login_screens.dart';
import 'package:agros/login_screen/user.dart';
import 'package:agros/mainpage/mainpage.dart';
import 'package:agros/myDialog.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../string.dart';

abstract class LoginViewModel extends State<LoginScreen> {
  var no_memebr = TextEditingController();
  var kode_akses = TextEditingController();
  bool match = false;
  bool isActive = false;
  var url = TextEditingController();
  bool isShow = false;

  setShow() {
    setState(() {
      isShow = isShow ? false : true;
    });
  }

  //this is just to simply navigate on a layout im working within
  simplePath() {
    Navigator.push(context, MaterialPageRoute(builder: (c) => MainPage()));
  }

  loginProcess() async {
    Loading(context).show();
    String url = "https://erp.agros.co.id/api/login";
    print(url);
    var response = await http.post(Uri.parse(url), body: {
      "email": no_memebr.text,
      "password": kode_akses.text
    }).catchError((error) {
      Navigator.pop(context);
      MyDialog(context, "Error!", "Couldn't get any response from $url",
              Status.ERROR)
          .build(() {
        Navigator.pop(context);
      });
    });
    if (response.body != null) {
      print(response.body);
      Navigator.pop(context);
      Map<String, dynamic> map = jsonDecode(response.body);
      if (response.statusCode == 200) {
        if (map["success"] == true) {
          UserResponse userResponse = UserResponse.fromJson(map);
          var ref = await SharedPreferences.getInstance();
          ref.setString(USER, jsonEncode(userResponse.data));
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (c) => MainPage()));
        }
        // try {
        //   Map<String, dynamic> map = jsonDecode(response.body);
        // } on TypeError {
        //   Iterable res = json.decode(response.body);
        //   print(res);
        // }
      } else {
        MyDialog(context, "Error", map["message"], Status.ERROR).build(() {
          Navigator.pop(context);
        });
      }
    }
  }

  @override
  void initState() {
    super.initState();
  }
}
