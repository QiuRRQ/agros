import 'package:flutter/material.dart';

Logo({double width, double height}) {
  return Image.asset(
    'assets/images/login.png',
    width: width,
    height: height,
  );
}

ownText(String title,
    {Color color,
    double fontSize,
    FontWeight fontWeight,
    TextOverflow overflow,
    TextAlign align}) {
  return Text(
    title,
    style: TextStyle(
      fontFamily: "Title",
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
    ),
    overflow: overflow,
    textAlign: align,
  );
}

ownButton(Text title, ValueChanged onPressed(),
    {color, height, width, margin, padding, shape}) {
  return Container(
    width: width,
    height: height,
    margin: margin,
    padding: padding,
    child: RaisedButton(
      shape: shape,
      color: color == null ? Colors.blue : color,
      onPressed: () => onPressed(),
      child: title,
    ),
  );
}
