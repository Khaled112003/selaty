import 'package:flutter/material.dart';

class ScreenHelper {
  static Size screenSize(BuildContext context) => MediaQuery.of(context).size;

  static bool isLandscape(BuildContext context) {
    final size = screenSize(context);
    return size.width > size.height;
  }
}
