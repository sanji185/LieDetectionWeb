// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CText extends StatelessWidget {
  String msg;
  String? fontFamily = 'Poppins';
  double? fontSize = 5.sp;
  double? height = 1.0;
  Color? color = Colors.black;
  FontWeight? fontWeight = FontWeight.normal;
  CText({
    Key? key,
    required this.msg,
    this.fontFamily,
    this.fontSize,
    this.height,
    this.color,
    this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      msg,
      style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color,
          fontFamily: fontFamily,
          height: height),
    );
  }
}
