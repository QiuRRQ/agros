import 'package:agros/mainpage/mainpage_Model.dart';
import 'package:agros/mainpage/riwayat_pekerjaan.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:fdottedline/fdottedline.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_image/flutter_image.dart';
import 'package:hexcolor/hexcolor.dart';

class MainPage extends StatefulWidget {
  @override
  _MainView createState() => new _MainView();
}

class _MainView extends MainPageModel {
  _item(RiwayatPekerjaan so) {
    return Card(
        color: HexColor("#f8f8f8"),
        elevation: 7.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(15.0),
              width: MediaQuery.of(context).size.width - 50,
              child: Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "PURCHASE ORDER",
                              style: TextStyle(
                                  color: Colors.green, fontSize: 13.0),
                              softWrap: true,
                              overflow: TextOverflow.clip,
                            ),
                            Text(
                              "${so.poNumber}",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                              softWrap: true,
                              overflow: TextOverflow.clip,
                              maxLines: 5,
                            )
                          ],
                        ),
                        InkWell(
                          child: Icon(Icons.arrow_forward),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.0),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 10.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ClipOval(
                                child: Material(
                                  color: Colors.yellow,
                                  child: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Container(
                                      width: 10,
                                      height: 10,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20))),
                                    ),
                                  ),
                                ),
                              ),
                              FDottedLine(
                                color: Colors.black26,
                                height: 35.0,
                                strokeWidth: 2.0,
                                dottedLength: 5.0,
                                space: 2.0,
                              ),
                              ClipOval(
                                child: Material(
                                  color: Colors.green,
                                  child: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Container(
                                      width: 10,
                                      height: 10,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20))),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 15.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      "${so.client}",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13.0),
                                      softWrap: true,
                                      overflow: TextOverflow.clip,
                                    ),
                                    Text(
                                      "${so.waktuMuat}",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 13.0),
                                      softWrap: true,
                                      overflow: TextOverflow.clip,
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      "${so.tujuan}",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13.0),
                                      softWrap: true,
                                      overflow: TextOverflow.clip,
                                    ),
                                    Text(
                                      "${so.waktuBongkar}",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 13.0),
                                      softWrap: true,
                                      overflow: TextOverflow.clip,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width - 50,
              height: 60,
              decoration: BoxDecoration(
                  color: HexColor("#097e63"),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5))),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10.0),
                    child: Text(
                      "${so.statusPengiriman}",
                      style: TextStyle(color: Colors.white, fontSize: 17.0),
                      softWrap: true,
                      overflow: TextOverflow.clip,
                    ),
                  ),
                  Container(
                    child: Icon(
                      Icons.access_time_sharp,
                      color: Colors.white,
                    ),
                    margin: EdgeInsets.only(right: 10.0),
                  )
                ],
              ),
            )
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isReq
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Container(
              color: Colors.white,
              padding: EdgeInsets.all(16.0),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                shrinkWrap: true,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(bottom: 10.0, top: 20.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          flex: 4,
                          child: Container(
                            margin: EdgeInsets.only(right: 3.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Halaman Utama",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 25.0),
                                  softWrap: true,
                                  overflow: TextOverflow.clip,
                                ),
                                Text(
                                  "Rincian tentang diri anda dan riwayat pekerjaan",
                                  style: TextStyle(color: Colors.black),
                                  softWrap: true,
                                  overflow: TextOverflow.clip,
                                )
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                            flex: 1,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  child: Image.asset(
                                      'assets/images/utama_1.png',
                                      width: 24.0,
                                      height: 24.0),
                                ),
                                InkWell(
                                  child: Image.asset(
                                      'assets/images/utama_2.png',
                                      width: 24.0,
                                      height: 24.0),
                                )
                              ],
                            ))
                      ],
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(bottom: 30.0),
                      child: Card(
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: HexColor("#f7f7f7"),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      topRight: Radius.circular(5))),
                              padding: EdgeInsets.all(15.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Flexible(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Container(
                                          margin: EdgeInsets.only(bottom: 12),
                                          child: AutoSizeText(
                                            "SELAMAT PAGI",
                                            style: TextStyle(
                                                fontFamily: "Title",
                                                color: HexColor("#369a69")),
                                            maxFontSize: 24.0,
                                            maxLines: 5,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(bottom: 12),
                                          child: Text(
                                            "${usr.name}",
                                            style: TextStyle(
                                                fontFamily: "Title",
                                                color: Colors.black,
                                                fontSize: 20.0),
                                            softWrap: true,
                                            overflow: TextOverflow.clip,
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(bottom: 12),
                                          child: AutoSizeText(
                                            "${usr.address}",
                                            style: TextStyle(
                                                fontFamily: "Title",
                                                color: Colors.black38),
                                            maxFontSize: 24.0,
                                            maxLines: 5,
                                            overflow: TextOverflow.clip,
                                            softWrap: true,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  FittedBox(
                                    fit: BoxFit.fill,
                                    child: Container(
                                        width: 80,
                                        height: 80,
                                        margin: EdgeInsets.all(16.0),
                                        decoration: new BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: new DecorationImage(
                                                fit: BoxFit.fill,
                                                //ToDO: change this to Network image when picturing is done in backend.
                                                image: new NetworkImageWithRetry(
                                                    "https://ayaxx.id/wp-content/uploads/2019/05/33-338618_data-backup-amp-recovery-the-businessman-gambar-orang.png.jpg")))),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(15.0),
                              decoration: BoxDecoration(
                                  color: HexColor("#097e63"),
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(5),
                                      bottomRight: Radius.circular(5))),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Flexible(
                                    flex: 6,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Flexible(
                                          flex: 1,
                                          child: Container(
                                            margin:
                                                EdgeInsets.only(right: 10.0),
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20))),
                                            child: Icon(
                                                Icons.person_outline_outlined),
                                          ),
                                        ),
                                        Flexible(
                                            flex: 2,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: Text(
                                                    "NOMOR ID",
                                                    style: TextStyle(
                                                        fontFamily: "Title",
                                                        fontSize: 12.0,
                                                        color: Colors.white),
                                                  ),
                                                ),
                                                Container(
                                                  child: AutoSizeText(
                                                    "01 0234 3456 2345",
                                                    style: TextStyle(
                                                        fontFamily: "Title",
                                                        color: Colors.white),
                                                    maxFontSize: 24.0,
                                                    maxLines: 5,
                                                    overflow: TextOverflow.clip,
                                                    softWrap: true,
                                                  ),
                                                ),
                                              ],
                                            ))
                                      ],
                                    ),
                                  ),
                                  Flexible(
                                    flex: 1,
                                    child: Container(
                                      margin: EdgeInsets.only(right: 8.0),
                                      child: FDottedLine(
                                        color: Colors.white,
                                        height: 35.0,
                                        strokeWidth: 2.0,
                                        dottedLength: 5.0,
                                        space: 2.0,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    flex: 6,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Flexible(
                                          flex: 1,
                                          child: Container(
                                            margin:
                                                EdgeInsets.only(right: 10.0),
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20))),
                                            child:
                                                Icon(Icons.phone_enabled_sharp),
                                          ),
                                        ),
                                        Flexible(
                                            flex: 2,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: Text(
                                                    "NOMOR TELEPON",
                                                    style: TextStyle(
                                                        fontFamily: "Title",
                                                        fontSize: 12.0,
                                                        color: Colors.white),
                                                    maxLines: 1,
                                                  ),
                                                ),
                                                Container(
                                                  child: AutoSizeText(
                                                    "+62 822 4369 7858",
                                                    style: TextStyle(
                                                        fontFamily: "Title",
                                                        color: Colors.white),
                                                    maxFontSize: 24.0,
                                                    maxLines: 5,
                                                    textAlign: TextAlign.start,
                                                    overflow: TextOverflow.clip,
                                                    softWrap: true,
                                                  ),
                                                ),
                                              ],
                                            ))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Riwayat Pekerjaan",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 25.0),
                                softWrap: true,
                                overflow: TextOverflow.clip,
                              ),
                              Text(
                                "Riwayat pekerjaan terakhir",
                                style: TextStyle(color: Colors.black),
                                softWrap: true,
                                overflow: TextOverflow.clip,
                                maxLines: 5,
                              )
                            ],
                          ),
                        ),
                        Flexible(
                            flex: 1,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  child: Container(
                                    width: 45,
                                    height: 45,
                                    child: Card(
                                      elevation: 7.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "PO",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15.0),
                                          softWrap: true,
                                          overflow: TextOverflow.clip,
                                        ),
                                      ),
                                    ),
                                  ),
                                  onTap: () {},
                                ),
                                InkWell(
                                  child: Container(
                                    width: 45,
                                    height: 45,
                                    child: Card(
                                      elevation: 7.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "DO",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15.0),
                                          softWrap: true,
                                          overflow: TextOverflow.clip,
                                        ),
                                      ),
                                    ),
                                  ),
                                  onTap: () {},
                                ),
                              ],
                            ))
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 30.0, top: 20.0),
                    height: 224,
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: data.length,
                      itemBuilder: (context, index) => _item(data[index]),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        InkWell(
                          child: Container(
                            height: 65,
                            child: Card(
                              color: HexColor("#f7f7f7"),
                              elevation: 5.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Center(
                                child: Text(
                                  "Riwayat Pekerjaan",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15.0),
                                  softWrap: true,
                                  overflow: TextOverflow.clip,
                                ),
                              ),
                            ),
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: Container(
                            height: 65,
                            child: Card(
                              color: HexColor("#369a69"),
                              elevation: 5.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Center(
                                child: Text(
                                  "Submit Pekerjaan",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15.0),
                                  softWrap: true,
                                  overflow: TextOverflow.clip,
                                ),
                              ),
                            ),
                          ),
                          onTap: () {},
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
    );
  }
}
