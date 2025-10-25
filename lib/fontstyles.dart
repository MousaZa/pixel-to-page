import 'package:flutter/material.dart';
class AppFontStyles {
  static const String primaryFont = 'RobotoSlab';
  static const TextStyle regular = TextStyle(
    fontFamily: primaryFont,
    fontWeight: FontWeight.w400,
    fontSize: 16,
  );
  static TextStyle bold = TextStyle(
    fontFamily: primaryFont,
    fontWeight: FontWeight.w700,
    fontSize: 16,
  );
  static TextStyle light = TextStyle(
    fontFamily: primaryFont,
    fontWeight: FontWeight.w300,
    fontSize: 16,
  );
}