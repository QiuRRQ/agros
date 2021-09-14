import 'package:agros/login_screen/login_screen_view_model.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../widget_assets.dart';

class LoginScreenView extends LoginViewModel {
  _body() {
    return Container(
      color: Colors.white,
      child: Container(
        padding: EdgeInsets.all(16.0),
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Logo(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 2),
                this.widget.userStr == null
                    ? TextFormField(
                        controller: no_memebr,
                        autofocus: true,
                        decoration: InputDecoration(
                            labelText: "    Nomor ID atau Email",
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide:
                                  BorderSide(color: Colors.black54, width: 2.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                color: Colors.black54,
                                width: 2.0,
                              ),
                            ),
                            prefixIcon: Container(
                              margin: EdgeInsets.only(
                                  top: 8.0, bottom: 8.0, right: 8.0),
                              decoration: BoxDecoration(
                                border: Border(
                                    right: BorderSide(color: Colors.black45)),
                              ),
                              child: Icon(Icons.person),
                            )),
                      )
                    : Text(""),
                Padding(padding: EdgeInsets.only(top: 10.0)),
                TextFormField(
                  controller: kode_akses,
                  autofocus: true,
                  obscureText: !isShow,
                  decoration: InputDecoration(
                      labelText: "   Kata Sandi",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide:
                            BorderSide(color: Colors.black54, width: 2.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Colors.black54,
                          width: 2.0,
                        ),
                      ),
                      prefixIcon: Container(
                        margin:
                            EdgeInsets.only(top: 8.0, bottom: 8.0, right: 8.0),
                        decoration: BoxDecoration(
                          border:
                              Border(right: BorderSide(color: Colors.black45)),
                        ),
                        child: Icon(Icons.lock),
                      ),
                      suffixIcon: IconButton(
                          icon: Icon(
                              isShow ? Icons.visibility : Icons.visibility_off),
                          onPressed: () => setShow())),
                ),
                Padding(padding: EdgeInsets.only(top: 30.0)),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50.0,
                  child: ownButton(
                    ownText("Silahkan Masuk",
                        color: Colors.white, fontSize: 17.0),
                    () {
                      loginProcess();
                    },
                    color: HexColor("#369a69"),
                  ),
                  //ToDO: change method di atas ke login saat api siap
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: _body(),
    );
  }

  void login() {}
}
