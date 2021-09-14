import 'dart:convert';
import 'package:agros/mainpage/riwayat_pekerjaan.dart';
import 'package:agros/myDialog.dart';
import 'package:http/http.dart' as http;
import 'package:agros/login_screen/user.dart';
import 'package:agros/mainpage/mainpage.dart';
import 'package:agros/string.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class MainPageModel extends State<MainPage> {
  ScrollController controller;
  bool isReq = true;
  List<RiwayatPekerjaan> data = [];
  User usr;

  getRiwayatKerja() async {
    isReq = true;
    var ref = await SharedPreferences.getInstance();
    setState(() {
      usr = User.fromJson(jsonDecode(ref.getString(USER)));
    });
    String url = "https://erp.agros.co.id/api/delivery?type=history&limit=3";
    var response = await http.get(Uri.parse(url), headers: {
      "Accept": "application/json",
      "Authorization": "Bearer ${usr.apiToken}"
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
      setState(() {
        isReq = false;
      });
      Map<String, dynamic> map = jsonDecode(response.body);
      if (response.statusCode == 200) {
        if (map["success"] == true) {
          Riwayat_pekerjaanResponse userResponse =
              Riwayat_pekerjaanResponse.fromJson(map);

          if (userResponse.data.isNotEmpty) {
            setState(() {
              data.addAll(Riwayat_pekerjaanResponse.fromJson(map).data);
            });
          }
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
    // TODO: implement initState
    getRiwayatKerja();
    super.initState();
  }
}
