import 'package:flutter/widgets.dart';

class GlobalSizes {
  static double h = 0.0;
  static double w = 0.0;

  static void init(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
  }
}