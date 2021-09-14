import 'package:agros/splash_screen/splash_screen_view_model.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../string.dart';

class SplashScreenView extends SplashViewModel {
  @override
  Widget build(BuildContext context) {
    // Replace this with your build function
    return Scaffold(
      body: Container(
        color: HexColor("#369a69"),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Center(
              child: Image.asset(
                'assets/images/agros.png',
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fill,
              ),
            ),
            Text(
              versionName,
              style: APPBAR_STYLE,
            ),
          ],
        ),
      ),
    );
  }
}
