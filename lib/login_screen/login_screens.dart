import 'package:agros/login_screen/login_screen_view.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  final String userStr;

  LoginScreen({this.userStr});
  @override
  LoginScreenView createState() => new LoginScreenView();
}

