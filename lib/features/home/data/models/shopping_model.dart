import 'package:flutter/cupertino.dart';

class ShoppingModel {
  final String text1;
  final String text2;
  final String text3;
  final Color color;
  TextStyle? textStyle;
  TextStyle? textStyle2;
  TextStyle? textStyle3;

  ShoppingModel({
    required this.text1,
    required this.text2,
    required this.text3,
    required this.color,
    this.textStyle,
    this.textStyle2,
    this.textStyle3,
  });
}
