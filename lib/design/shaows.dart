import 'package:flutter/material.dart';



List<BoxShadow> listBoxShadowCommon =[
  BoxShadow(
    color: Colors.grey.withOpacity(.5),
    blurRadius: 5.0, // soften the shadow
    spreadRadius: 0.0, //extend the shadow
    offset: Offset(
      5.0, // Move to right 10  horizontally
      5.0, // Move to bottom 10 Vertically
    ),
  ),
  BoxShadow(
    color: Colors.white.withOpacity(.5),
    blurRadius: 5.0, // soften the shadow
    spreadRadius: 0.0, //extend the shadow
    offset: Offset(
      -5.0, // Move to right 10  horizontally
      -5.0, // Move to bottom 10 Vertically
    ),
  )
];

List<BoxShadow> glowShadowBlue = [
  BoxShadow(
    color: Color(0xff3366FF).withOpacity(0.8),
    spreadRadius: 4,
    blurRadius: 10,
  ),
  BoxShadow(
    color: Color(0xff3366FF).withOpacity(0.8),
    spreadRadius: -4,
    blurRadius: 5,
  )
];
List<BoxShadow> glowShadowPink= [
  BoxShadow(
    color: Colors.pink,
    spreadRadius: 4,
    blurRadius: 10,
  ),
  BoxShadow(
    color: Colors.pink,
    spreadRadius: -4,
    blurRadius: 5,
  )
];