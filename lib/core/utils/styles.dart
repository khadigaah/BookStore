import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';

abstract class Styles {
  static const titleMedium = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: Color(0xFFF7F7F7),
  );


  static const titleSmall = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.normal,
    color: Color(0xFFF7F7F7),
    fontFamily: kGtSectraFine,
  );

   static const titleSmall30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.normal,
    color: Color(0xFFF7F7F7),
    fontFamily: kGtSectraFine,
  );

   static const titleSmall14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: Colors.grey,
  );
   static const titleSmall16 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Color(0xFFF7F7F7),
  );


}
