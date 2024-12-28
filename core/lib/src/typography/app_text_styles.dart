import 'package:flutter/material.dart';

class AppTextStyles {
  final TextStyle h1;
  final TextStyle h2;
  final TextStyle h3;
  final TextStyle b1;
  final TextStyle b2;
  final TextStyle b3;
  final TextStyle underline;
  final TextStyle primary1;
  final TextStyle primary2;
  final TextStyle primary3;
  final TextStyle secondary1;
  final TextStyle secondary2;
  final TextStyle secondary3;

  AppTextStyles({
    this.h1 = const TextStyle(fontSize: 96, fontWeight: FontWeight.normal),
    this.h2 = const TextStyle(fontSize: 60, fontWeight: FontWeight.normal),
    this.h3 = const TextStyle(fontSize: 48, fontWeight: FontWeight.normal),
    this.b1 = const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    this.b2 = const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
    this.b3 = const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
    this.underline = const TextStyle(
        decoration: TextDecoration.underline, fontWeight: FontWeight.normal),
    this.primary1 =
        const TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
    this.primary2 =
        const TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
    this.primary3 =
        const TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
    this.secondary1 =
        const TextStyle(fontSize: 16, fontWeight: FontWeight.w200),
    this.secondary2 =
        const TextStyle(fontSize: 14, fontWeight: FontWeight.w200),
    this.secondary3 =
        const TextStyle(fontSize: 12, fontWeight: FontWeight.w200),
  });
}
