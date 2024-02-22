import 'package:banking_app/utilities/themeColors.dart';
import 'package:flutter/material.dart';

class ThemeStyles {
  static TextStyle primaryTitle = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
    color: ThemeColors.black,
  );
  static TextStyle seeAll = TextStyle(
    fontSize: 15.0,
    color: ThemeColors.black,
  );
  static TextStyle cardDetails = TextStyle(
    fontSize: 15.0,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

   static TextStyle titlecolor = TextStyle(
    fontSize: 15.0,
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );
  static TextStyle cardMoney = TextStyle(
    color: Colors.white,
    fontSize: 16.0,
    fontWeight: FontWeight.w700,
  );
  static TextStyle tagText = TextStyle(
    fontStyle: FontStyle.italic,
    color: ThemeColors.black,
    fontWeight: FontWeight.w500,
  );
  static TextStyle otherDetailsPrimary = TextStyle(
    fontSize: 16.0,
    color: ThemeColors.black,
  );
  static TextStyle otherDetailsSecondary = TextStyle(
    fontSize: 12.0,
    color: Colors.grey,
  );
  
}
