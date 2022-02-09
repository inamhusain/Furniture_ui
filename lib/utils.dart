// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AppColors {
  static Color darkSkyBlue = const Color(0xff3675FE);
  static Color scaffoldBG = const Color(0xffFCFCFE);
  static Color black = Colors.black;
  static Color grey = Colors.grey;
  static Color lightGrey = Color(0xffF3F3F5);
}

class Utils {
  static ratioSize(context, size) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return (height / 10 * width / 10) / 1000 * size;
  }

  static List iconList = [
    Icons.monitor,
    Icons.account_balance_wallet_rounded,
    Icons.security,
    Icons.message,
    Icons.monetization_on
  ];
  static List listOfCards = [
    {'image': 'assets/img1.jpg'},
    {'image': 'assets/img2.jpg'},
    {'image': 'assets/img6.jpg'},
    {'image': 'assets/img4.jpeg'},
    {'image': 'assets/img5.jpeg'}
  ];
}
