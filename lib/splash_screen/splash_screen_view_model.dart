import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:agros/login_screen/login_screens.dart';
import 'package:agros/splash_screen/splash_screen_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

abstract class SplashViewModel extends State<SplashScreen> {
  String versionName = "Ver. 0.0.11 (Alpha Build)";

  String appName;
  String packageName;
  String version;
  String buildNumber;
  bool isUpdate = false;
  bool updateConfirmed = false;

  // Add your state and logic here
  @override
  void initState() {
    Future.delayed(Duration.zero, () {
      this.gotoNextPage();
//      controller = ScrollController();
//      controller.addListener(_loadMore);
    });

    super.initState();
  }

  gotoNextPage() async {
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (c) => LoginScreen())));
  }
}
